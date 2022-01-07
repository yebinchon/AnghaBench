
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int flags; } ;
struct dm_block {int dummy; } ;
struct cache_disk_superblock {int flags; } ;


 int DMERR (char*) ;
 int NEEDS_CHECK ;
 int WRITE_LOCK (struct dm_cache_metadata*) ;
 int WRITE_UNLOCK (struct dm_cache_metadata*) ;
 int cpu_to_le32 (int ) ;
 struct cache_disk_superblock* dm_block_data (struct dm_block*) ;
 int dm_bm_unlock (struct dm_block*) ;
 int set_bit (int ,int *) ;
 int superblock_lock (struct dm_cache_metadata*,struct dm_block**) ;

int dm_cache_metadata_set_needs_check(struct dm_cache_metadata *cmd)
{
 int r;
 struct dm_block *sblock;
 struct cache_disk_superblock *disk_super;

 WRITE_LOCK(cmd);
 set_bit(NEEDS_CHECK, &cmd->flags);

 r = superblock_lock(cmd, &sblock);
 if (r) {
  DMERR("couldn't read superblock");
  goto out;
 }

 disk_super = dm_block_data(sblock);
 disk_super->flags = cpu_to_le32(cmd->flags);

 dm_bm_unlock(sblock);

out:
 WRITE_UNLOCK(cmd);
 return r;
}
