
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int write_misses; int write_hits; int read_misses; int read_hits; } ;
struct dm_cache_metadata {int tm; TYPE_1__ stats; int policy_hint_size; int * policy_version; int policy_name; int cache_blocks; int discard_nr_blocks; int discard_block_size; int discard_root; int hint_root; int dirty_root; int root; int flags; int discard_info; int dirty_info; } ;
struct dm_block {int dummy; } ;
struct cache_disk_superblock {void* write_misses; void* write_hits; void* read_misses; void* read_hits; void* policy_hint_size; void** policy_version; int policy_name; void* cache_blocks; void* discard_nr_blocks; void* discard_block_size; void* discard_root; void* hint_root; void* dirty_root; void* mapping_root; void* flags; } ;
typedef int flags_mutator ;


 int BUILD_BUG_ON (int) ;
 int __copy_sm_root (struct dm_cache_metadata*,struct cache_disk_superblock*) ;
 int __save_sm_root (struct dm_cache_metadata*) ;
 void* cpu_to_le32 (int ) ;
 void* cpu_to_le64 (int ) ;
 int dm_bitset_flush (int *,int ,int *) ;
 struct cache_disk_superblock* dm_block_data (struct dm_block*) ;
 int dm_tm_commit (int ,struct dm_block*) ;
 int dm_tm_pre_commit (int ) ;
 int from_cblock (int ) ;
 int from_dblock (int ) ;
 scalar_t__ separate_dirty_bits (struct dm_cache_metadata*) ;
 int strncpy (int ,int ,int) ;
 int superblock_lock (struct dm_cache_metadata*,struct dm_block**) ;
 int update_flags (struct cache_disk_superblock*,int ) ;

__attribute__((used)) static int __commit_transaction(struct dm_cache_metadata *cmd,
    flags_mutator mutator)
{
 int r;
 struct cache_disk_superblock *disk_super;
 struct dm_block *sblock;




 BUILD_BUG_ON(sizeof(struct cache_disk_superblock) > 512);

 if (separate_dirty_bits(cmd)) {
  r = dm_bitset_flush(&cmd->dirty_info, cmd->dirty_root,
        &cmd->dirty_root);
  if (r)
   return r;
 }

 r = dm_bitset_flush(&cmd->discard_info, cmd->discard_root,
       &cmd->discard_root);
 if (r)
  return r;

 r = dm_tm_pre_commit(cmd->tm);
 if (r < 0)
  return r;

 r = __save_sm_root(cmd);
 if (r)
  return r;

 r = superblock_lock(cmd, &sblock);
 if (r)
  return r;

 disk_super = dm_block_data(sblock);

 disk_super->flags = cpu_to_le32(cmd->flags);
 if (mutator)
  update_flags(disk_super, mutator);

 disk_super->mapping_root = cpu_to_le64(cmd->root);
 if (separate_dirty_bits(cmd))
  disk_super->dirty_root = cpu_to_le64(cmd->dirty_root);
 disk_super->hint_root = cpu_to_le64(cmd->hint_root);
 disk_super->discard_root = cpu_to_le64(cmd->discard_root);
 disk_super->discard_block_size = cpu_to_le64(cmd->discard_block_size);
 disk_super->discard_nr_blocks = cpu_to_le64(from_dblock(cmd->discard_nr_blocks));
 disk_super->cache_blocks = cpu_to_le32(from_cblock(cmd->cache_blocks));
 strncpy(disk_super->policy_name, cmd->policy_name, sizeof(disk_super->policy_name));
 disk_super->policy_version[0] = cpu_to_le32(cmd->policy_version[0]);
 disk_super->policy_version[1] = cpu_to_le32(cmd->policy_version[1]);
 disk_super->policy_version[2] = cpu_to_le32(cmd->policy_version[2]);
 disk_super->policy_hint_size = cpu_to_le32(cmd->policy_hint_size);

 disk_super->read_hits = cpu_to_le32(cmd->stats.read_hits);
 disk_super->read_misses = cpu_to_le32(cmd->stats.read_misses);
 disk_super->write_hits = cpu_to_le32(cmd->stats.write_hits);
 disk_super->write_misses = cpu_to_le32(cmd->stats.write_misses);
 __copy_sm_root(cmd, disk_super);

 return dm_tm_commit(cmd->tm, sblock);
}
