
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdrom_info {int devinfo; int drive; } ;
struct block_device {int bd_disk; } ;
typedef int fmode_t ;




 int EINVAL ;
 int cdrom_info ;
 int cdrom_ioctl (int *,struct block_device*,int ,unsigned int,unsigned long) ;
 int generic_ide_ioctl (int ,struct block_device*,unsigned int,unsigned long) ;
 struct cdrom_info* ide_drv_g (int ,int ) ;
 int idecd_get_spindown (int *,unsigned long) ;
 int idecd_set_spindown (int *,unsigned long) ;

__attribute__((used)) static int idecd_locked_ioctl(struct block_device *bdev, fmode_t mode,
   unsigned int cmd, unsigned long arg)
{
 struct cdrom_info *info = ide_drv_g(bdev->bd_disk, cdrom_info);
 int err;

 switch (cmd) {
 case 128:
  return idecd_set_spindown(&info->devinfo, arg);
 case 129:
  return idecd_get_spindown(&info->devinfo, arg);
 default:
  break;
 }

 err = generic_ide_ioctl(info->drive, bdev, cmd, arg);
 if (err == -EINVAL)
  err = cdrom_ioctl(&info->devinfo, bdev, mode, cmd, arg);

 return err;
}
