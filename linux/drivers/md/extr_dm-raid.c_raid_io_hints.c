
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chunk_sectors; } ;
struct raid_set {TYPE_1__ md; } ;
struct queue_limits {unsigned int discard_granularity; int max_discard_sectors; } ;
struct dm_target {struct raid_set* private; } ;


 int blk_limits_io_min (struct queue_limits*,unsigned int) ;
 int blk_limits_io_opt (struct queue_limits*,unsigned int) ;
 unsigned int mddev_data_stripes (struct raid_set*) ;
 scalar_t__ rs_is_raid1 (struct raid_set*) ;
 scalar_t__ rs_is_raid10 (struct raid_set*) ;
 unsigned int to_bytes (int ) ;

__attribute__((used)) static void raid_io_hints(struct dm_target *ti, struct queue_limits *limits)
{
 struct raid_set *rs = ti->private;
 unsigned int chunk_size_bytes = to_bytes(rs->md.chunk_sectors);

 blk_limits_io_min(limits, chunk_size_bytes);
 blk_limits_io_opt(limits, chunk_size_bytes * mddev_data_stripes(rs));





 if (rs_is_raid1(rs) || rs_is_raid10(rs)) {
  limits->discard_granularity = chunk_size_bytes;
  limits->max_discard_sectors = rs->md.chunk_sectors;
 }
}
