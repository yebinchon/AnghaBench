
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int dummy; } ;
struct cdrom_info {int devinfo; } ;
typedef int fmode_t ;


 int cdrom_info ;
 int cdrom_release (int *,int ) ;
 int ide_cd_mutex ;
 int ide_cd_put (struct cdrom_info*) ;
 struct cdrom_info* ide_drv_g (struct gendisk*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void idecd_release(struct gendisk *disk, fmode_t mode)
{
 struct cdrom_info *info = ide_drv_g(disk, cdrom_info);

 mutex_lock(&ide_cd_mutex);
 cdrom_release(&info->devinfo, mode);

 ide_cd_put(info);
 mutex_unlock(&ide_cd_mutex);
}
