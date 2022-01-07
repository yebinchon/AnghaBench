
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_clone_metadata {int region_map; } ;


 scalar_t__ dm_clone_is_hydration_done (struct dm_clone_metadata*) ;
 scalar_t__ test_bit (unsigned long,int ) ;

bool dm_clone_is_region_hydrated(struct dm_clone_metadata *cmd, unsigned long region_nr)
{
 return dm_clone_is_hydration_done(cmd) || test_bit(region_nr, cmd->region_map);
}
