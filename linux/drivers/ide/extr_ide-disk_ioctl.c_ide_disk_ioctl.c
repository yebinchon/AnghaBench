
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;
typedef int ide_drive_t ;
typedef int fmode_t ;


 int EOPNOTSUPP ;
 int generic_ide_ioctl (int *,struct block_device*,unsigned int,unsigned long) ;
 int ide_disk_ioctl_mutex ;
 int ide_disk_ioctl_settings ;
 int ide_setting_ioctl (int *,struct block_device*,unsigned int,unsigned long,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ide_disk_ioctl(ide_drive_t *drive, struct block_device *bdev, fmode_t mode,
     unsigned int cmd, unsigned long arg)
{
 int err;

 mutex_lock(&ide_disk_ioctl_mutex);
 err = ide_setting_ioctl(drive, bdev, cmd, arg, ide_disk_ioctl_settings);
 if (err != -EOPNOTSUPP)
  goto out;

 err = generic_ide_ioctl(drive, bdev, cmd, arg);
out:
 mutex_unlock(&ide_disk_ioctl_mutex);
 return err;
}
