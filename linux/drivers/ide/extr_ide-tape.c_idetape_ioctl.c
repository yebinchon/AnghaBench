
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_tape_obj {int * drive; } ;
struct block_device {int bd_disk; } ;
typedef int ide_drive_t ;
typedef int fmode_t ;


 int EINVAL ;
 int generic_ide_ioctl (int *,struct block_device*,unsigned int,unsigned long) ;
 struct ide_tape_obj* ide_drv_g (int ,int ) ;
 int ide_tape_mutex ;
 int ide_tape_obj ;
 int idetape_blkdev_ioctl (int *,unsigned int,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int idetape_ioctl(struct block_device *bdev, fmode_t mode,
   unsigned int cmd, unsigned long arg)
{
 struct ide_tape_obj *tape = ide_drv_g(bdev->bd_disk, ide_tape_obj);
 ide_drive_t *drive = tape->drive;
 int err;

 mutex_lock(&ide_tape_mutex);
 err = generic_ide_ioctl(drive, bdev, cmd, arg);
 if (err == -EINVAL)
  err = idetape_blkdev_ioctl(drive, cmd, arg);
 mutex_unlock(&ide_tape_mutex);

 return err;
}
