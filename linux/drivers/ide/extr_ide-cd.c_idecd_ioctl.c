
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;
typedef int fmode_t ;


 int ide_cd_mutex ;
 int idecd_locked_ioctl (struct block_device*,int ,unsigned int,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int idecd_ioctl(struct block_device *bdev, fmode_t mode,
        unsigned int cmd, unsigned long arg)
{
 int ret;

 mutex_lock(&ide_cd_mutex);
 ret = idecd_locked_ioctl(bdev, mode, cmd, arg);
 mutex_unlock(&ide_cd_mutex);

 return ret;
}
