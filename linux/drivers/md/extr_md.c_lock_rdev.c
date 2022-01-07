
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_rdev {struct block_device* bdev; } ;
struct block_device {int dummy; } ;
typedef int dev_t ;


 int BDEVNAME_SIZE ;
 int FMODE_EXCL ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 scalar_t__ IS_ERR (struct block_device*) ;
 int PTR_ERR (struct block_device*) ;
 int __bdevname (int ,char*) ;
 struct block_device* blkdev_get_by_dev (int ,int,struct md_rdev*) ;
 int pr_warn (char*,int ) ;

__attribute__((used)) static int lock_rdev(struct md_rdev *rdev, dev_t dev, int shared)
{
 int err = 0;
 struct block_device *bdev;
 char b[BDEVNAME_SIZE];

 bdev = blkdev_get_by_dev(dev, FMODE_READ|FMODE_WRITE|FMODE_EXCL,
     shared ? (struct md_rdev *)lock_rdev : rdev);
 if (IS_ERR(bdev)) {
  pr_warn("md: could not open %s.\n", __bdevname(dev, b));
  return PTR_ERR(bdev);
 }
 rdev->bdev = bdev;
 return err;
}
