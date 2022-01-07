
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct era_metadata {int metadata_space_map_root; int sm; } ;


 int dm_sm_copy_root (int ,int *,size_t) ;
 int dm_sm_root_size (int ,size_t*) ;

__attribute__((used)) static int save_sm_root(struct era_metadata *md)
{
 int r;
 size_t metadata_len;

 r = dm_sm_root_size(md->sm, &metadata_len);
 if (r < 0)
  return r;

 return dm_sm_copy_root(md->sm, &md->metadata_space_map_root,
          metadata_len);
}
