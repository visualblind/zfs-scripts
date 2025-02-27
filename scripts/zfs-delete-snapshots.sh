#!/bin/bash

for snapshot in `zfs list -H -t snapshot | cut -f 1 | egrep '<Volume Name>/<Dataset Name>/<Nested Dataset Name 1>@auto-|<Dataset Name>/<Nested Dataset Name 2>@auto-'`
do
zfs destroy $snapshot
echo Destroyed $snapshot
done
