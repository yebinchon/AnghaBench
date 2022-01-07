
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int changed; int discard_nr_blocks; int discard_block_size; int discard_root; int discard_info; } ;
typedef int sector_t ;
typedef int dm_dblock_t ;


 int WRITE_LOCK (struct dm_cache_metadata*) ;
 int WRITE_UNLOCK (struct dm_cache_metadata*) ;
 int dm_bitset_resize (int *,int ,int ,int ,int,int *) ;
 int from_dblock (int ) ;

int dm_cache_discard_bitset_resize(struct dm_cache_metadata *cmd,
       sector_t discard_block_size,
       dm_dblock_t new_nr_entries)
{
 int r;

 WRITE_LOCK(cmd);
 r = dm_bitset_resize(&cmd->discard_info,
        cmd->discard_root,
        from_dblock(cmd->discard_nr_blocks),
        from_dblock(new_nr_entries),
        0, &cmd->discard_root);
 if (!r) {
  cmd->discard_block_size = discard_block_size;
  cmd->discard_nr_blocks = new_nr_entries;
 }

 cmd->changed = 1;
 WRITE_UNLOCK(cmd);

 return r;
}
