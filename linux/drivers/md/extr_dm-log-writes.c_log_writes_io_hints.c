
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct queue_limits {int max_discard_sectors; int physical_block_size; int io_min; int logical_block_size; int discard_granularity; } ;
struct log_writes_c {int device_supports_discard; TYPE_1__* dev; int sectorsize; } ;
struct dm_target {struct log_writes_c* private; } ;
struct TYPE_2__ {int bdev; } ;


 int SECTOR_SHIFT ;
 int UINT_MAX ;
 struct request_queue* bdev_get_queue (int ) ;
 int bdev_logical_block_size (int ) ;
 int bdev_physical_block_size (int ) ;
 int blk_queue_discard (struct request_queue*) ;

__attribute__((used)) static void log_writes_io_hints(struct dm_target *ti, struct queue_limits *limits)
{
 struct log_writes_c *lc = ti->private;
 struct request_queue *q = bdev_get_queue(lc->dev->bdev);

 if (!q || !blk_queue_discard(q)) {
  lc->device_supports_discard = 0;
  limits->discard_granularity = lc->sectorsize;
  limits->max_discard_sectors = (UINT_MAX >> SECTOR_SHIFT);
 }
 limits->logical_block_size = bdev_logical_block_size(lc->dev->bdev);
 limits->physical_block_size = bdev_physical_block_size(lc->dev->bdev);
 limits->io_min = limits->physical_block_size;
}
