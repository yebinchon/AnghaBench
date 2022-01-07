
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct queue_limits {int io_opt; } ;
struct dm_target {struct cache* private; } ;
struct cache {int sectors_per_block; } ;


 int SECTOR_SHIFT ;
 int blk_limits_io_min (struct queue_limits*,int) ;
 int blk_limits_io_opt (struct queue_limits*,int) ;
 int disable_passdown_if_not_supported (struct cache*) ;
 scalar_t__ do_div (int,int) ;
 int set_discard_limits (struct cache*,struct queue_limits*) ;

__attribute__((used)) static void cache_io_hints(struct dm_target *ti, struct queue_limits *limits)
{
 struct cache *cache = ti->private;
 uint64_t io_opt_sectors = limits->io_opt >> SECTOR_SHIFT;





 if (io_opt_sectors < cache->sectors_per_block ||
     do_div(io_opt_sectors, cache->sectors_per_block)) {
  blk_limits_io_min(limits, cache->sectors_per_block << SECTOR_SHIFT);
  blk_limits_io_opt(limits, cache->sectors_per_block << SECTOR_SHIFT);
 }

 disable_passdown_if_not_supported(cache);
 set_discard_limits(cache, limits);
}
