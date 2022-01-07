
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mode; int dax_dev; struct block_device* bdev; } ;
struct table_device {TYPE_2__ dm_dev; } ;
struct mapped_device {int dummy; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef int dev_t ;
struct TYPE_3__ {int disk_name; } ;


 int BUG_ON (struct block_device*) ;
 int FMODE_EXCL ;
 scalar_t__ IS_ERR (struct block_device*) ;
 int PTR_ERR (struct block_device*) ;
 int _dm_claim_ptr ;
 int bd_link_disk_holder (struct block_device*,int ) ;
 struct block_device* blkdev_get_by_dev (int ,int,int ) ;
 int blkdev_put (struct block_device*,int) ;
 int dax_get_by_host (int ) ;
 int dm_disk (struct mapped_device*) ;

__attribute__((used)) static int open_table_device(struct table_device *td, dev_t dev,
        struct mapped_device *md)
{
 struct block_device *bdev;

 int r;

 BUG_ON(td->dm_dev.bdev);

 bdev = blkdev_get_by_dev(dev, td->dm_dev.mode | FMODE_EXCL, _dm_claim_ptr);
 if (IS_ERR(bdev))
  return PTR_ERR(bdev);

 r = bd_link_disk_holder(bdev, dm_disk(md));
 if (r) {
  blkdev_put(bdev, td->dm_dev.mode | FMODE_EXCL);
  return r;
 }

 td->dm_dev.bdev = bdev;
 td->dm_dev.dax_dev = dax_get_by_host(bdev->bd_disk->disk_name);
 return 0;
}
