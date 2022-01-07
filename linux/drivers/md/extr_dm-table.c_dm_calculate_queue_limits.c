
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct queue_limits {int zoned; unsigned int chunk_sectors; } ;
struct dm_target {scalar_t__ len; scalar_t__ begin; TYPE_1__* type; } ;
struct dm_table {int md; } ;
typedef enum blk_zoned_model { ____Placeholder_blk_zoned_model } blk_zoned_model ;
struct TYPE_2__ {scalar_t__ (* iterate_devices ) (struct dm_target*,int ,struct queue_limits*) ;int (* io_hints ) (struct dm_target*,struct queue_limits*) ;} ;


 int BLK_ZONED_NONE ;
 int DMWARN (char*,int ,unsigned long long,unsigned long long) ;
 int EINVAL ;
 int blk_set_stacking_limits (struct queue_limits*) ;
 scalar_t__ blk_stack_limits (struct queue_limits*,struct queue_limits*,int ) ;
 int device_area_is_invalid ;
 int dm_device_name (int ) ;
 int dm_set_device_limits ;
 unsigned int dm_table_get_num_targets (struct dm_table*) ;
 struct dm_target* dm_table_get_target (struct dm_table*,unsigned int) ;
 scalar_t__ stub1 (struct dm_target*,int ,struct queue_limits*) ;
 int stub2 (struct dm_target*,struct queue_limits*) ;
 scalar_t__ stub3 (struct dm_target*,int ,struct queue_limits*) ;
 int validate_hardware_logical_block_alignment (struct dm_table*,struct queue_limits*) ;
 scalar_t__ validate_hardware_zoned_model (struct dm_table*,int,unsigned int) ;

int dm_calculate_queue_limits(struct dm_table *table,
         struct queue_limits *limits)
{
 struct dm_target *ti;
 struct queue_limits ti_limits;
 unsigned i;
 enum blk_zoned_model zoned_model = BLK_ZONED_NONE;
 unsigned int zone_sectors = 0;

 blk_set_stacking_limits(limits);

 for (i = 0; i < dm_table_get_num_targets(table); i++) {
  blk_set_stacking_limits(&ti_limits);

  ti = dm_table_get_target(table, i);

  if (!ti->type->iterate_devices)
   goto combine_limits;




  ti->type->iterate_devices(ti, dm_set_device_limits,
       &ti_limits);

  if (zoned_model == BLK_ZONED_NONE && ti_limits.zoned != BLK_ZONED_NONE) {




   zoned_model = ti_limits.zoned;
   zone_sectors = ti_limits.chunk_sectors;
  }


  if (ti->type->io_hints)
   ti->type->io_hints(ti, &ti_limits);





  if (ti->type->iterate_devices(ti, device_area_is_invalid,
           &ti_limits))
   return -EINVAL;

combine_limits:




  if (blk_stack_limits(limits, &ti_limits, 0) < 0)
   DMWARN("%s: adding target device "
          "(start sect %llu len %llu) "
          "caused an alignment inconsistency",
          dm_device_name(table->md),
          (unsigned long long) ti->begin,
          (unsigned long long) ti->len);





  if (limits->zoned == BLK_ZONED_NONE && ti_limits.zoned != BLK_ZONED_NONE) {
   limits->zoned = ti_limits.zoned;
  }
 }
 if (limits->zoned != BLK_ZONED_NONE) {




  zoned_model = limits->zoned;
  zone_sectors = limits->chunk_sectors;
 }
 if (validate_hardware_zoned_model(table, zoned_model, zone_sectors))
  return -EINVAL;

 return validate_hardware_logical_block_alignment(table, limits);
}
