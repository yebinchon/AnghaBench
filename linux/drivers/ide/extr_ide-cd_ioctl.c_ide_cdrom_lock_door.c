
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdrom_device_info {int * handle; } ;
typedef int ide_drive_t ;


 int ide_cd_lockdoor (int *,int) ;

int ide_cdrom_lock_door(struct cdrom_device_info *cdi, int lock)
{
 ide_drive_t *drive = cdi->handle;

 return ide_cd_lockdoor(drive, lock);
}
