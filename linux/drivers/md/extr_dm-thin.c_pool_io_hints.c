
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct queue_limits {int io_opt; int max_sectors; scalar_t__ discard_granularity; } ;
struct TYPE_2__ {int discard_enabled; } ;
struct pool_c {TYPE_1__ adjusted_pf; struct pool* pool; } ;
struct pool {int sectors_per_block; } ;
struct dm_target {struct pool_c* private; } ;
typedef int sector_t ;


 int SECTOR_SHIFT ;
 int blk_limits_io_min (struct queue_limits*,int) ;
 int blk_limits_io_opt (struct queue_limits*,int) ;
 int disable_passdown_if_not_supported (struct pool_c*) ;
 scalar_t__ is_factor (int,int) ;
 int rounddown_pow_of_two (int) ;

__attribute__((used)) static void pool_io_hints(struct dm_target *ti, struct queue_limits *limits)
{
 struct pool_c *pt = ti->private;
 struct pool *pool = pt->pool;
 sector_t io_opt_sectors = limits->io_opt >> SECTOR_SHIFT;
 if (limits->max_sectors < pool->sectors_per_block) {
  while (!is_factor(pool->sectors_per_block, limits->max_sectors)) {
   if ((limits->max_sectors & (limits->max_sectors - 1)) == 0)
    limits->max_sectors--;
   limits->max_sectors = rounddown_pow_of_two(limits->max_sectors);
  }
 }





 if (io_opt_sectors < pool->sectors_per_block ||
     !is_factor(io_opt_sectors, pool->sectors_per_block)) {
  if (is_factor(pool->sectors_per_block, limits->max_sectors))
   blk_limits_io_min(limits, limits->max_sectors << SECTOR_SHIFT);
  else
   blk_limits_io_min(limits, pool->sectors_per_block << SECTOR_SHIFT);
  blk_limits_io_opt(limits, pool->sectors_per_block << SECTOR_SHIFT);
 }






 if (!pt->adjusted_pf.discard_enabled) {






  limits->discard_granularity = 0;
  return;
 }

 disable_passdown_if_not_supported(pt);





}
