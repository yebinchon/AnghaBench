
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;
typedef int fmode_t ;


 int ide_gd_mutex ;
 int ide_gd_open (struct block_device*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ide_gd_unlocked_open(struct block_device *bdev, fmode_t mode)
{
 int ret;

 mutex_lock(&ide_gd_mutex);
 ret = ide_gd_open(bdev, mode);
 mutex_unlock(&ide_gd_mutex);

 return ret;
}
