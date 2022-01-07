
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdrom_info {int devinfo; } ;
struct block_device {int bd_disk; } ;
typedef int fmode_t ;


 int ENXIO ;
 int cdrom_open (int *,struct block_device*,int ) ;
 int check_disk_change (struct block_device*) ;
 struct cdrom_info* ide_cd_get (int ) ;
 int ide_cd_mutex ;
 int ide_cd_put (struct cdrom_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int idecd_open(struct block_device *bdev, fmode_t mode)
{
 struct cdrom_info *info;
 int rc = -ENXIO;

 check_disk_change(bdev);

 mutex_lock(&ide_cd_mutex);
 info = ide_cd_get(bdev->bd_disk);
 if (!info)
  goto out;

 rc = cdrom_open(&info->devinfo, bdev, mode);
 if (rc < 0)
  ide_cd_put(info);
out:
 mutex_unlock(&ide_cd_mutex);
 return rc;
}
