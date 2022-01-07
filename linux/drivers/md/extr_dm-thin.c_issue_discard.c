
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thin_c {TYPE_1__* pool_dev; int pool; } ;
struct discard_op {int bio; struct thin_c* tc; } ;
typedef int sector_t ;
typedef scalar_t__ dm_block_t ;
struct TYPE_2__ {int bdev; } ;


 int GFP_NOWAIT ;
 int __blkdev_issue_discard (int ,int ,int ,int ,int ,int *) ;
 int block_to_sectors (int ,scalar_t__) ;

__attribute__((used)) static int issue_discard(struct discard_op *op, dm_block_t data_b, dm_block_t data_e)
{
 struct thin_c *tc = op->tc;
 sector_t s = block_to_sectors(tc->pool, data_b);
 sector_t len = block_to_sectors(tc->pool, data_e - data_b);

 return __blkdev_issue_discard(tc->pool_dev->bdev, s, len,
          GFP_NOWAIT, 0, &op->bio);
}
