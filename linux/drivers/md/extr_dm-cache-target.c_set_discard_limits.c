
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct queue_limits {int discard_granularity; int discard_misaligned; int discard_alignment; int max_hw_discard_sectors; int max_discard_sectors; } ;
struct TYPE_5__ {int discard_passdown; } ;
struct cache {int discard_block_size; int origin_sectors; TYPE_2__ features; TYPE_1__* origin_dev; } ;
struct block_device {int dummy; } ;
struct TYPE_6__ {struct queue_limits limits; } ;
struct TYPE_4__ {struct block_device* bdev; } ;


 int SECTOR_SHIFT ;
 TYPE_3__* bdev_get_queue (struct block_device*) ;
 int min_t (int ,int,int ) ;
 int sector_t ;

__attribute__((used)) static void set_discard_limits(struct cache *cache, struct queue_limits *limits)
{
 struct block_device *origin_bdev = cache->origin_dev->bdev;
 struct queue_limits *origin_limits = &bdev_get_queue(origin_bdev)->limits;

 if (!cache->features.discard_passdown) {

  limits->max_discard_sectors = min_t(sector_t, cache->discard_block_size * 1024,
          cache->origin_sectors);
  limits->discard_granularity = cache->discard_block_size << SECTOR_SHIFT;
  return;
 }





 limits->max_discard_sectors = origin_limits->max_discard_sectors;
 limits->max_hw_discard_sectors = origin_limits->max_hw_discard_sectors;
 limits->discard_granularity = origin_limits->discard_granularity;
 limits->discard_alignment = origin_limits->discard_alignment;
 limits->discard_misaligned = origin_limits->discard_misaligned;
}
