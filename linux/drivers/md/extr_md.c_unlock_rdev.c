
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_rdev {struct block_device* bdev; } ;
struct block_device {int dummy; } ;


 int FMODE_EXCL ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int blkdev_put (struct block_device*,int) ;

__attribute__((used)) static void unlock_rdev(struct md_rdev *rdev)
{
 struct block_device *bdev = rdev->bdev;
 rdev->bdev = ((void*)0);
 blkdev_put(bdev, FMODE_READ|FMODE_WRITE|FMODE_EXCL);
}
