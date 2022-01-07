
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct superblock_disk {int dummy; } ;
struct dm_clone_metadata {int tm; int sm; int nr_regions; int bitset_root; int bitset_info; int bm; } ;
struct dm_block {int dummy; } ;


 int DMERR (char*,...) ;
 int SUPERBLOCK_LOCATION ;
 int __copy_sm_root (struct dm_clone_metadata*) ;
 int __prepare_superblock (struct dm_clone_metadata*,struct superblock_disk*) ;
 int dm_bitset_empty (int *,int *) ;
 int dm_bitset_resize (int *,int ,int ,int ,int,int *) ;
 struct superblock_disk* dm_block_data (struct dm_block*) ;
 int dm_disk_bitset_init (int ,int *) ;
 int dm_sm_destroy (int ) ;
 int dm_tm_commit (int ,struct dm_block*) ;
 int dm_tm_create_with_sm (int ,int ,int *,int *) ;
 int dm_tm_destroy (int ) ;
 int dm_tm_pre_commit (int ) ;
 int superblock_write_lock_zero (struct dm_clone_metadata*,struct dm_block**) ;

__attribute__((used)) static int __format_metadata(struct dm_clone_metadata *cmd)
{
 int r;
 struct dm_block *sblock;
 struct superblock_disk *sb;

 r = dm_tm_create_with_sm(cmd->bm, SUPERBLOCK_LOCATION, &cmd->tm, &cmd->sm);
 if (r) {
  DMERR("Failed to create transaction manager");
  return r;
 }

 dm_disk_bitset_init(cmd->tm, &cmd->bitset_info);

 r = dm_bitset_empty(&cmd->bitset_info, &cmd->bitset_root);
 if (r) {
  DMERR("Failed to create empty on-disk bitset");
  goto err_with_tm;
 }

 r = dm_bitset_resize(&cmd->bitset_info, cmd->bitset_root, 0,
        cmd->nr_regions, 0, &cmd->bitset_root);
 if (r) {
  DMERR("Failed to resize on-disk bitset to %lu entries", cmd->nr_regions);
  goto err_with_tm;
 }


 r = dm_tm_pre_commit(cmd->tm);
 if (r) {
  DMERR("dm_tm_pre_commit failed");
  goto err_with_tm;
 }

 r = __copy_sm_root(cmd);
 if (r) {
  DMERR("__copy_sm_root failed");
  goto err_with_tm;
 }

 r = superblock_write_lock_zero(cmd, &sblock);
 if (r) {
  DMERR("Failed to write_lock superblock");
  goto err_with_tm;
 }

 sb = dm_block_data(sblock);
 __prepare_superblock(cmd, sb);
 r = dm_tm_commit(cmd->tm, sblock);
 if (r) {
  DMERR("Failed to commit superblock");
  goto err_with_tm;
 }

 return 0;

err_with_tm:
 dm_sm_destroy(cmd->sm);
 dm_tm_destroy(cmd->tm);

 return r;
}
