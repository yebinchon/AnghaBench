
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct queue_limits {unsigned int max_discard_sectors; unsigned int max_hw_discard_sectors; unsigned int max_write_zeroes_sectors; unsigned int chunk_sectors; unsigned int max_sectors; int zoned; void* discard_granularity; void* discard_alignment; void* physical_block_size; void* logical_block_size; } ;
struct dmz_target {TYPE_1__* dev; } ;
struct dm_target {struct dmz_target* private; } ;
struct TYPE_2__ {unsigned int zone_nr_sectors; } ;


 int BLK_ZONED_NONE ;
 void* DMZ_BLOCK_SIZE ;
 int blk_limits_io_min (struct queue_limits*,void*) ;
 int blk_limits_io_opt (struct queue_limits*,void*) ;

__attribute__((used)) static void dmz_io_hints(struct dm_target *ti, struct queue_limits *limits)
{
 struct dmz_target *dmz = ti->private;
 unsigned int chunk_sectors = dmz->dev->zone_nr_sectors;

 limits->logical_block_size = DMZ_BLOCK_SIZE;
 limits->physical_block_size = DMZ_BLOCK_SIZE;

 blk_limits_io_min(limits, DMZ_BLOCK_SIZE);
 blk_limits_io_opt(limits, DMZ_BLOCK_SIZE);

 limits->discard_alignment = DMZ_BLOCK_SIZE;
 limits->discard_granularity = DMZ_BLOCK_SIZE;
 limits->max_discard_sectors = chunk_sectors;
 limits->max_hw_discard_sectors = chunk_sectors;
 limits->max_write_zeroes_sectors = chunk_sectors;


 limits->chunk_sectors = chunk_sectors;
 limits->max_sectors = chunk_sectors;


 limits->zoned = BLK_ZONED_NONE;
}
