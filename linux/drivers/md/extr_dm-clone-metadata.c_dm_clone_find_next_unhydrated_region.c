
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_clone_metadata {int nr_regions; int region_map; } ;


 unsigned long find_next_zero_bit (int ,int ,unsigned long) ;

unsigned long dm_clone_find_next_unhydrated_region(struct dm_clone_metadata *cmd,
         unsigned long start)
{
 return find_next_zero_bit(cmd->region_map, cmd->nr_regions, start);
}
