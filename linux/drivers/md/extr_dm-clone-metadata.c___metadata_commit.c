
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct superblock_disk {int dummy; } ;
struct dm_clone_metadata {int hydration_done; int nr_regions; int region_map; int tm; int bitset_root; int bitset_info; } ;
struct dm_block {int dummy; } ;


 int DMERR (char*) ;
 int __copy_sm_root (struct dm_clone_metadata*) ;
 int __prepare_superblock (struct dm_clone_metadata*,struct superblock_disk*) ;
 scalar_t__ bitmap_full (int ,int ) ;
 int dm_bitset_flush (int *,int ,int *) ;
 struct superblock_disk* dm_block_data (struct dm_block*) ;
 int dm_tm_commit (int ,struct dm_block*) ;
 int dm_tm_pre_commit (int ) ;
 int superblock_write_lock_zero (struct dm_clone_metadata*,struct dm_block**) ;

__attribute__((used)) static int __metadata_commit(struct dm_clone_metadata *cmd)
{
 int r;
 struct dm_block *sblock;
 struct superblock_disk *sb;


 r = dm_bitset_flush(&cmd->bitset_info, cmd->bitset_root, &cmd->bitset_root);
 if (r) {
  DMERR("dm_bitset_flush failed");
  return r;
 }


 r = dm_tm_pre_commit(cmd->tm);
 if (r) {
  DMERR("dm_tm_pre_commit failed");
  return r;
 }


 r = __copy_sm_root(cmd);
 if (r) {
  DMERR("__copy_sm_root failed");
  return r;
 }


 r = superblock_write_lock_zero(cmd, &sblock);
 if (r) {
  DMERR("Failed to write_lock superblock");
  return r;
 }


 sb = dm_block_data(sblock);
 __prepare_superblock(cmd, sb);


 r = dm_tm_commit(cmd->tm, sblock);
 if (r) {
  DMERR("Failed to commit superblock");
  return r;
 }




 if (bitmap_full(cmd->region_map, cmd->nr_regions))
  cmd->hydration_done = 1;

 return 0;
}
