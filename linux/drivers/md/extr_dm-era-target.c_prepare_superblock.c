
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct superblock_disk {void* metadata_snap; void* era_array_root; void* writeset_tree_root; int current_writeset; void* current_era; void* nr_blocks; void* metadata_block_size; void* data_block_size; void* version; int uuid; void* flags; void* magic; } ;
struct era_metadata {unsigned long block_size; unsigned long nr_blocks; unsigned long current_era; int metadata_snap; int era_array_root; int writeset_tree_root; TYPE_1__* current_writeset; } ;
struct TYPE_2__ {int md; } ;


 unsigned long DM_ERA_METADATA_BLOCK_SIZE ;
 unsigned long MAX_ERA_VERSION ;
 unsigned long SECTOR_SHIFT ;
 int SUPERBLOCK_MAGIC ;
 int copy_sm_root (struct era_metadata*,struct superblock_disk*) ;
 void* cpu_to_le32 (unsigned long) ;
 void* cpu_to_le64 (int ) ;
 int memset (int ,int ,int) ;
 int ws_pack (int *,int *) ;

__attribute__((used)) static void prepare_superblock(struct era_metadata *md, struct superblock_disk *disk)
{
 disk->magic = cpu_to_le64(SUPERBLOCK_MAGIC);
 disk->flags = cpu_to_le32(0ul);


 memset(disk->uuid, 0, sizeof(disk->uuid));
 disk->version = cpu_to_le32(MAX_ERA_VERSION);

 copy_sm_root(md, disk);

 disk->data_block_size = cpu_to_le32(md->block_size);
 disk->metadata_block_size = cpu_to_le32(DM_ERA_METADATA_BLOCK_SIZE >> SECTOR_SHIFT);
 disk->nr_blocks = cpu_to_le32(md->nr_blocks);
 disk->current_era = cpu_to_le32(md->current_era);

 ws_pack(&md->current_writeset->md, &disk->current_writeset);
 disk->writeset_tree_root = cpu_to_le64(md->writeset_tree_root);
 disk->era_array_root = cpu_to_le64(md->era_array_root);
 disk->metadata_snap = cpu_to_le64(md->metadata_snap);
}
