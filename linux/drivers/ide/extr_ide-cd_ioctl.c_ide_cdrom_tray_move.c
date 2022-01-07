
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdrom_device_info {int * handle; } ;
typedef int ide_drive_t ;


 int cdrom_eject (int *,int) ;
 int ide_cd_lockdoor (int *,int ) ;

int ide_cdrom_tray_move(struct cdrom_device_info *cdi, int position)
{
 ide_drive_t *drive = cdi->handle;

 if (position) {
  int stat = ide_cd_lockdoor(drive, 0);

  if (stat)
   return stat;
 }

 return cdrom_eject(drive, !position);
}
