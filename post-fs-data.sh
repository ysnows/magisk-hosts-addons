#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

mkdir -p $MODDIR/system/etc/
touch $MODDIR/system/etc/hosts

echo '127.0.0.1 update.miui.com' >> $MODDIR/system/etc/hosts

# This script will be executed in post-fs-data mode
# More info in the main Magisk thread
