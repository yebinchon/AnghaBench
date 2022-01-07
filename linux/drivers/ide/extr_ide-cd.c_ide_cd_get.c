
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int dummy; } ;
struct cdrom_info {int dev; int drive; } ;


 int cdrom_info ;
 int get_device (int *) ;
 scalar_t__ ide_device_get (int ) ;
 struct cdrom_info* ide_drv_g (struct gendisk*,int ) ;
 int idecd_ref_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct cdrom_info *ide_cd_get(struct gendisk *disk)
{
 struct cdrom_info *cd = ((void*)0);

 mutex_lock(&idecd_ref_mutex);
 cd = ide_drv_g(disk, cdrom_info);
 if (cd) {
  if (ide_device_get(cd->drive))
   cd = ((void*)0);
  else
   get_device(&cd->dev);

 }
 mutex_unlock(&idecd_ref_mutex);
 return cd;
}
