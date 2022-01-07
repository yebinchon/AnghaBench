
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_cache_metadata {int tm; int dirty_root; int data_block_size; int discard_nr_blocks; int discard_block_size; int discard_root; int hint_root; int root; int version; TYPE_1__* bdev; } ;
struct dm_block {int dummy; } ;
struct cache_disk_superblock {void* dirty_root; void* write_misses; void* write_hits; void* read_misses; void* read_hits; void* cache_blocks; void* data_block_size; void* metadata_block_size; void* discard_nr_blocks; void* discard_block_size; void* discard_root; void* hint_root; void* mapping_root; void* policy_hint_size; int policy_version; int policy_name; void* version; void* magic; int uuid; scalar_t__ flags; } ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {int bd_inode; } ;


 int CACHE_SUPERBLOCK_MAGIC ;
 int DM_CACHE_METADATA_BLOCK_SIZE ;
 scalar_t__ DM_CACHE_METADATA_MAX_SECTORS ;
 scalar_t__ SECTOR_SHIFT ;
 int __copy_sm_root (struct dm_cache_metadata*,struct cache_disk_superblock*) ;
 int __save_sm_root (struct dm_cache_metadata*) ;
 void* cpu_to_le32 (int ) ;
 void* cpu_to_le64 (int ) ;
 struct cache_disk_superblock* dm_block_data (struct dm_block*) ;
 int dm_tm_commit (int ,struct dm_block*) ;
 int dm_tm_pre_commit (int ) ;
 int from_dblock (int ) ;
 scalar_t__ i_size_read (int ) ;
 int memset (int ,int ,int) ;
 scalar_t__ separate_dirty_bits (struct dm_cache_metadata*) ;
 int superblock_lock_zero (struct dm_cache_metadata*,struct dm_block**) ;

__attribute__((used)) static int __write_initial_superblock(struct dm_cache_metadata *cmd)
{
 int r;
 struct dm_block *sblock;
 struct cache_disk_superblock *disk_super;
 sector_t bdev_size = i_size_read(cmd->bdev->bd_inode) >> SECTOR_SHIFT;


 if (bdev_size > DM_CACHE_METADATA_MAX_SECTORS)
  bdev_size = DM_CACHE_METADATA_MAX_SECTORS;

 r = dm_tm_pre_commit(cmd->tm);
 if (r < 0)
  return r;





 r = __save_sm_root(cmd);
 if (r)
  return r;

 r = superblock_lock_zero(cmd, &sblock);
 if (r)
  return r;

 disk_super = dm_block_data(sblock);
 disk_super->flags = 0;
 memset(disk_super->uuid, 0, sizeof(disk_super->uuid));
 disk_super->magic = cpu_to_le64(CACHE_SUPERBLOCK_MAGIC);
 disk_super->version = cpu_to_le32(cmd->version);
 memset(disk_super->policy_name, 0, sizeof(disk_super->policy_name));
 memset(disk_super->policy_version, 0, sizeof(disk_super->policy_version));
 disk_super->policy_hint_size = cpu_to_le32(0);

 __copy_sm_root(cmd, disk_super);

 disk_super->mapping_root = cpu_to_le64(cmd->root);
 disk_super->hint_root = cpu_to_le64(cmd->hint_root);
 disk_super->discard_root = cpu_to_le64(cmd->discard_root);
 disk_super->discard_block_size = cpu_to_le64(cmd->discard_block_size);
 disk_super->discard_nr_blocks = cpu_to_le64(from_dblock(cmd->discard_nr_blocks));
 disk_super->metadata_block_size = cpu_to_le32(DM_CACHE_METADATA_BLOCK_SIZE);
 disk_super->data_block_size = cpu_to_le32(cmd->data_block_size);
 disk_super->cache_blocks = cpu_to_le32(0);

 disk_super->read_hits = cpu_to_le32(0);
 disk_super->read_misses = cpu_to_le32(0);
 disk_super->write_hits = cpu_to_le32(0);
 disk_super->write_misses = cpu_to_le32(0);

 if (separate_dirty_bits(cmd))
  disk_super->dirty_root = cpu_to_le64(cmd->dirty_root);

 return dm_tm_commit(cmd->tm, sblock);
}
