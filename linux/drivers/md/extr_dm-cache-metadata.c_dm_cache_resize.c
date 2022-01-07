
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int changed; int cache_blocks; int dirty_root; int dirty_info; int root; int info; } ;
typedef int dm_cblock_t ;
typedef int __le64 ;


 int DMERR (char*) ;
 int EINVAL ;
 int WRITE_LOCK (struct dm_cache_metadata*) ;
 int WRITE_UNLOCK (struct dm_cache_metadata*) ;
 int __dm_bless_for_disk (int *) ;
 int __dm_unbless_for_disk (int *) ;
 int blocks_are_unmapped_or_clean (struct dm_cache_metadata*,int ,int ,int*) ;
 int dm_array_resize (int *,int ,scalar_t__,scalar_t__,int *,int *) ;
 int dm_bitset_resize (int *,int ,scalar_t__,scalar_t__,int,int *) ;
 scalar_t__ from_cblock (int ) ;
 int pack_value (int ,int ) ;
 scalar_t__ separate_dirty_bits (struct dm_cache_metadata*) ;

int dm_cache_resize(struct dm_cache_metadata *cmd, dm_cblock_t new_cache_size)
{
 int r;
 bool clean;
 __le64 null_mapping = pack_value(0, 0);

 WRITE_LOCK(cmd);
 __dm_bless_for_disk(&null_mapping);

 if (from_cblock(new_cache_size) < from_cblock(cmd->cache_blocks)) {
  r = blocks_are_unmapped_or_clean(cmd, new_cache_size, cmd->cache_blocks, &clean);
  if (r) {
   __dm_unbless_for_disk(&null_mapping);
   goto out;
  }

  if (!clean) {
   DMERR("unable to shrink cache due to dirty blocks");
   r = -EINVAL;
   __dm_unbless_for_disk(&null_mapping);
   goto out;
  }
 }

 r = dm_array_resize(&cmd->info, cmd->root, from_cblock(cmd->cache_blocks),
       from_cblock(new_cache_size),
       &null_mapping, &cmd->root);
 if (r)
  goto out;

 if (separate_dirty_bits(cmd)) {
  r = dm_bitset_resize(&cmd->dirty_info, cmd->dirty_root,
         from_cblock(cmd->cache_blocks), from_cblock(new_cache_size),
         0, &cmd->dirty_root);
  if (r)
   goto out;
 }

 cmd->cache_blocks = new_cache_size;
 cmd->changed = 1;

out:
 WRITE_UNLOCK(cmd);

 return r;
}
