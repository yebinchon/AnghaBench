
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_clone_metadata {int nr_regions; int region_map; } ;


 unsigned long bitmap_weight (int ,int ) ;

unsigned long dm_clone_nr_of_hydrated_regions(struct dm_clone_metadata *cmd)
{
 return bitmap_weight(cmd->region_map, cmd->nr_regions);
}
