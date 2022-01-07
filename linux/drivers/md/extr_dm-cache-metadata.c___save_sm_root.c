
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int metadata_space_map_root; int metadata_sm; } ;


 int dm_sm_copy_root (int ,int *,size_t) ;
 int dm_sm_root_size (int ,size_t*) ;

__attribute__((used)) static int __save_sm_root(struct dm_cache_metadata *cmd)
{
 int r;
 size_t metadata_len;

 r = dm_sm_root_size(cmd->metadata_sm, &metadata_len);
 if (r < 0)
  return r;

 return dm_sm_copy_root(cmd->metadata_sm, &cmd->metadata_space_map_root,
          metadata_len);
}
