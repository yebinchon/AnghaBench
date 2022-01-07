
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_clone_metadata {int nr_regions; int region_map; } ;


 scalar_t__ dm_clone_is_hydration_done (struct dm_clone_metadata*) ;
 unsigned long find_next_zero_bit (int ,int ,unsigned long) ;

bool dm_clone_is_range_hydrated(struct dm_clone_metadata *cmd,
    unsigned long start, unsigned long nr_regions)
{
 unsigned long bit;

 if (dm_clone_is_hydration_done(cmd))
  return 1;

 bit = find_next_zero_bit(cmd->region_map, cmd->nr_regions, start);

 return (bit >= (start + nr_regions));
}
