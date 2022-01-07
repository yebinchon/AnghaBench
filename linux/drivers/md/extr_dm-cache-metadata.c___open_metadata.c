
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {unsigned long data_block_size; int clean_when_opened; int discard_info; int tm; int dirty_info; int metadata_sm; int bm; } ;
struct dm_block {int dummy; } ;
struct cache_disk_superblock {int flags; int metadata_space_map_root; int data_block_size; } ;


 int CACHE_SUPERBLOCK_LOCATION ;
 int CLEAN_SHUTDOWN ;
 int DMERR (char*,...) ;
 int EINVAL ;
 int __check_incompat_features (struct cache_disk_superblock*,struct dm_cache_metadata*) ;
 int __setup_mapping_info (struct dm_cache_metadata*) ;
 struct cache_disk_superblock* dm_block_data (struct dm_block*) ;
 int dm_bm_unlock (struct dm_block*) ;
 int dm_disk_bitset_init (int ,int *) ;
 int dm_tm_open_with_sm (int ,int ,int ,int,int *,int *) ;
 unsigned long le32_to_cpu (int ) ;
 int superblock_read_lock (struct dm_cache_metadata*,struct dm_block**) ;
 int test_bit (int ,unsigned long*) ;

__attribute__((used)) static int __open_metadata(struct dm_cache_metadata *cmd)
{
 int r;
 struct dm_block *sblock;
 struct cache_disk_superblock *disk_super;
 unsigned long sb_flags;

 r = superblock_read_lock(cmd, &sblock);
 if (r < 0) {
  DMERR("couldn't read lock superblock");
  return r;
 }

 disk_super = dm_block_data(sblock);


 if (le32_to_cpu(disk_super->data_block_size) != cmd->data_block_size) {
  DMERR("changing the data block size (from %u to %llu) is not supported",
        le32_to_cpu(disk_super->data_block_size),
        (unsigned long long)cmd->data_block_size);
  r = -EINVAL;
  goto bad;
 }

 r = __check_incompat_features(disk_super, cmd);
 if (r < 0)
  goto bad;

 r = dm_tm_open_with_sm(cmd->bm, CACHE_SUPERBLOCK_LOCATION,
          disk_super->metadata_space_map_root,
          sizeof(disk_super->metadata_space_map_root),
          &cmd->tm, &cmd->metadata_sm);
 if (r < 0) {
  DMERR("tm_open_with_sm failed");
  goto bad;
 }

 __setup_mapping_info(cmd);
 dm_disk_bitset_init(cmd->tm, &cmd->dirty_info);
 dm_disk_bitset_init(cmd->tm, &cmd->discard_info);
 sb_flags = le32_to_cpu(disk_super->flags);
 cmd->clean_when_opened = test_bit(CLEAN_SHUTDOWN, &sb_flags);
 dm_bm_unlock(sblock);

 return 0;

bad:
 dm_bm_unlock(sblock);
 return r;
}
