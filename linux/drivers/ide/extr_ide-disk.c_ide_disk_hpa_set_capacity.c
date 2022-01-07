
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_4__ {scalar_t__ capacity64; } ;
typedef TYPE_1__ ide_drive_t ;


 scalar_t__ idedisk_set_max_address (TYPE_1__*,scalar_t__,int) ;

__attribute__((used)) static u64 ide_disk_hpa_set_capacity(ide_drive_t *drive, u64 set_max, int lba48)
{
 set_max = idedisk_set_max_address(drive, set_max, lba48);
 if (set_max)
  drive->capacity64 = set_max;

 return set_max;
}
