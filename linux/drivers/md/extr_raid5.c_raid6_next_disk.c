
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int raid6_next_disk(int disk, int raid_disks)
{
 disk++;
 return (disk < raid_disks) ? disk : 0;
}
