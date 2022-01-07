
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct queue_limits {int io_opt; } ;
struct dm_target {struct clone* private; } ;
struct clone {int region_size; } ;


 int SECTOR_SHIFT ;
 int blk_limits_io_min (struct queue_limits*,int) ;
 int blk_limits_io_opt (struct queue_limits*,int) ;
 int disable_passdown_if_not_supported (struct clone*) ;
 scalar_t__ do_div (int,int) ;
 int set_discard_limits (struct clone*,struct queue_limits*) ;

__attribute__((used)) static void clone_io_hints(struct dm_target *ti, struct queue_limits *limits)
{
 struct clone *clone = ti->private;
 u64 io_opt_sectors = limits->io_opt >> SECTOR_SHIFT;





 if (io_opt_sectors < clone->region_size ||
     do_div(io_opt_sectors, clone->region_size)) {
  blk_limits_io_min(limits, clone->region_size << SECTOR_SHIFT);
  blk_limits_io_opt(limits, clone->region_size << SECTOR_SHIFT);
 }

 disable_passdown_if_not_supported(clone);
 set_discard_limits(clone, limits);
}
