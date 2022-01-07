
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct superblock_disk {int bitset_root; int metadata_space_map_root; int target_size; int region_size; } ;
struct dm_clone_metadata {scalar_t__ region_size; scalar_t__ target_size; scalar_t__ bitset_root; int bitset_info; int tm; int sm; int bm; } ;
struct dm_block {int dummy; } ;


 int DMERR (char*) ;
 int EINVAL ;
 int SUPERBLOCK_LOCATION ;
 struct superblock_disk* dm_block_data (struct dm_block*) ;
 int dm_bm_unlock (struct dm_block*) ;
 int dm_disk_bitset_init (int ,int *) ;
 int dm_tm_open_with_sm (int ,int ,int ,int,int *,int *) ;
 scalar_t__ le64_to_cpu (int ) ;
 int superblock_read_lock (struct dm_clone_metadata*,struct dm_block**) ;

__attribute__((used)) static int __open_metadata(struct dm_clone_metadata *cmd)
{
 int r;
 struct dm_block *sblock;
 struct superblock_disk *sb;

 r = superblock_read_lock(cmd, &sblock);

 if (r) {
  DMERR("Failed to read_lock superblock");
  return r;
 }

 sb = dm_block_data(sblock);


 if (cmd->region_size != le64_to_cpu(sb->region_size) ||
     cmd->target_size != le64_to_cpu(sb->target_size)) {
  DMERR("Region and/or target size don't match the ones in metadata");
  r = -EINVAL;
  goto out_with_lock;
 }

 r = dm_tm_open_with_sm(cmd->bm, SUPERBLOCK_LOCATION,
          sb->metadata_space_map_root,
          sizeof(sb->metadata_space_map_root),
          &cmd->tm, &cmd->sm);

 if (r) {
  DMERR("dm_tm_open_with_sm failed");
  goto out_with_lock;
 }

 dm_disk_bitset_init(cmd->tm, &cmd->bitset_info);
 cmd->bitset_root = le64_to_cpu(sb->bitset_root);

out_with_lock:
 dm_bm_unlock(sblock);

 return r;
}
