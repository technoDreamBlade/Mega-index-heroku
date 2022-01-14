#!/bin/bash
rclone version
wget $UserName >> /.config/rclone/rclone.conf
rclone version
rclone serve http gd_qbit: --addr :$PORT --buffer-size 256M --dir-cache-time 12h --vfs-read-chunk-size 256M --vfs-read-chunk-size-limit 2G --vfs-cache-mode writes


