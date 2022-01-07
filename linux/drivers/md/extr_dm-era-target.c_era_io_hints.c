
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct queue_limits {int io_opt; } ;
struct era {int sectors_per_block; } ;
struct dm_target {struct era* private; } ;


 int SECTOR_SHIFT ;
 int blk_limits_io_min (struct queue_limits*,int ) ;
 int blk_limits_io_opt (struct queue_limits*,int) ;
 scalar_t__ do_div (int,int) ;

__attribute__((used)) static void era_io_hints(struct dm_target *ti, struct queue_limits *limits)
{
 struct era *era = ti->private;
 uint64_t io_opt_sectors = limits->io_opt >> SECTOR_SHIFT;





 if (io_opt_sectors < era->sectors_per_block ||
     do_div(io_opt_sectors, era->sectors_per_block)) {
  blk_limits_io_min(limits, 0);
  blk_limits_io_opt(limits, era->sectors_per_block << SECTOR_SHIFT);
 }
}
