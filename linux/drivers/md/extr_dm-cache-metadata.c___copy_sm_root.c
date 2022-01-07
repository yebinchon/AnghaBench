
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int metadata_space_map_root; } ;
struct cache_disk_superblock {int metadata_space_map_root; } ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static void __copy_sm_root(struct dm_cache_metadata *cmd,
      struct cache_disk_superblock *disk_super)
{
 memcpy(&disk_super->metadata_space_map_root,
        &cmd->metadata_space_map_root,
        sizeof(cmd->metadata_space_map_root));
}
