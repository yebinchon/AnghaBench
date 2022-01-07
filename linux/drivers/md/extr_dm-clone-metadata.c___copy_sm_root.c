
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_clone_metadata {int metadata_space_map_root; int sm; } ;


 int dm_sm_copy_root (int ,int *,size_t) ;
 int dm_sm_root_size (int ,size_t*) ;

__attribute__((used)) static int __copy_sm_root(struct dm_clone_metadata *cmd)
{
 int r;
 size_t root_size;

 r = dm_sm_root_size(cmd->sm, &root_size);
 if (r)
  return r;

 return dm_sm_copy_root(cmd->sm, &cmd->metadata_space_map_root, root_size);
}
