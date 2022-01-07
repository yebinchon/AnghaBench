
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int dummy; } ;
struct dm_block {int dummy; } ;
struct cache_disk_superblock {int dummy; } ;


 struct cache_disk_superblock* dm_block_data (struct dm_block*) ;
 int dm_bm_unlock (struct dm_block*) ;
 int read_superblock_fields (struct dm_cache_metadata*,struct cache_disk_superblock*) ;
 int superblock_read_lock (struct dm_cache_metadata*,struct dm_block**) ;

__attribute__((used)) static int __begin_transaction(struct dm_cache_metadata *cmd)
{
 int r;
 struct cache_disk_superblock *disk_super;
 struct dm_block *sblock;





 r = superblock_read_lock(cmd, &sblock);
 if (r)
  return r;

 disk_super = dm_block_data(sblock);
 read_superblock_fields(cmd, disk_super);
 dm_bm_unlock(sblock);

 return 0;
}
