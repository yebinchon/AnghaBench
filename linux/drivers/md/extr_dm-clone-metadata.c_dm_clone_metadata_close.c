
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_clone_metadata {int region_map; int fail_io; } ;


 int __destroy_persistent_data_structures (struct dm_clone_metadata*) ;
 int dirty_map_exit (struct dm_clone_metadata*) ;
 int kfree (struct dm_clone_metadata*) ;
 int kvfree (int ) ;

void dm_clone_metadata_close(struct dm_clone_metadata *cmd)
{
 if (!cmd->fail_io)
  __destroy_persistent_data_structures(cmd);

 dirty_map_exit(cmd);
 kvfree(cmd->region_map);
 kfree(cmd);
}
