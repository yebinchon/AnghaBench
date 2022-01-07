
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct superblock_disk {int metadata_snap; int era_array_root; int writeset_tree_root; int current_era; int nr_blocks; int data_block_size; int metadata_space_map_root; } ;
struct era_metadata {int archived_writesets; void* metadata_snap; void* era_array_root; void* writeset_tree_root; void* current_era; void* nr_blocks; void* block_size; int sm; int tm; int bm; } ;
struct dm_block {int dummy; } ;


 int DMERR (char*) ;
 int SUPERBLOCK_LOCATION ;
 struct superblock_disk* dm_block_data (struct dm_block*) ;
 int dm_bm_unlock (struct dm_block*) ;
 int dm_tm_open_with_sm (int ,int ,int ,int,int *,int *) ;
 void* le32_to_cpu (int ) ;
 void* le64_to_cpu (int ) ;
 int setup_infos (struct era_metadata*) ;
 int superblock_read_lock (struct era_metadata*,struct dm_block**) ;

__attribute__((used)) static int open_metadata(struct era_metadata *md)
{
 int r;
 struct dm_block *sblock;
 struct superblock_disk *disk;

 r = superblock_read_lock(md, &sblock);
 if (r) {
  DMERR("couldn't read_lock superblock");
  return r;
 }

 disk = dm_block_data(sblock);
 r = dm_tm_open_with_sm(md->bm, SUPERBLOCK_LOCATION,
          disk->metadata_space_map_root,
          sizeof(disk->metadata_space_map_root),
          &md->tm, &md->sm);
 if (r) {
  DMERR("dm_tm_open_with_sm failed");
  goto bad;
 }

 setup_infos(md);

 md->block_size = le32_to_cpu(disk->data_block_size);
 md->nr_blocks = le32_to_cpu(disk->nr_blocks);
 md->current_era = le32_to_cpu(disk->current_era);

 md->writeset_tree_root = le64_to_cpu(disk->writeset_tree_root);
 md->era_array_root = le64_to_cpu(disk->era_array_root);
 md->metadata_snap = le64_to_cpu(disk->metadata_snap);
 md->archived_writesets = 1;

 dm_bm_unlock(sblock);

 return 0;

bad:
 dm_bm_unlock(sblock);
 return r;
}
