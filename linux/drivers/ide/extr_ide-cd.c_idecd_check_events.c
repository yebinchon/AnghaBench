
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int dummy; } ;
struct cdrom_info {int devinfo; } ;


 unsigned int cdrom_check_events (int *,unsigned int) ;
 int cdrom_info ;
 struct cdrom_info* ide_drv_g (struct gendisk*,int ) ;

__attribute__((used)) static unsigned int idecd_check_events(struct gendisk *disk,
           unsigned int clearing)
{
 struct cdrom_info *info = ide_drv_g(disk, cdrom_info);
 return cdrom_check_events(&info->devinfo, clearing);
}
