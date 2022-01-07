
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int bm; } ;
struct dm_block {int dummy; } ;
struct cache_disk_superblock {int dummy; } ;
typedef int flags_mutator ;


 struct cache_disk_superblock* dm_block_data (struct dm_block*) ;
 int dm_bm_flush (int ) ;
 int dm_bm_unlock (struct dm_block*) ;
 int read_superblock_fields (struct dm_cache_metadata*,struct cache_disk_superblock*) ;
 int superblock_lock (struct dm_cache_metadata*,struct dm_block**) ;
 int update_flags (struct cache_disk_superblock*,int ) ;

__attribute__((used)) static int __begin_transaction_flags(struct dm_cache_metadata *cmd,
         flags_mutator mutator)
{
 int r;
 struct cache_disk_superblock *disk_super;
 struct dm_block *sblock;

 r = superblock_lock(cmd, &sblock);
 if (r)
  return r;

 disk_super = dm_block_data(sblock);
 update_flags(disk_super, mutator);
 read_superblock_fields(cmd, disk_super);
 dm_bm_unlock(sblock);

 return dm_bm_flush(cmd->bm);
}
