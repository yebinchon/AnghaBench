
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct superblock_disk {void* bitset_root; void* target_size; void* region_size; int metadata_space_map_root; void* version; void* magic; int uuid; void* flags; } ;
struct dm_clone_metadata {int bitset_root; int target_size; int region_size; int metadata_space_map_root; } ;


 unsigned long DM_CLONE_MAX_METADATA_VERSION ;
 int SUPERBLOCK_MAGIC ;
 void* cpu_to_le32 (unsigned long) ;
 void* cpu_to_le64 (int ) ;
 int memcpy (int *,int *,int) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void __prepare_superblock(struct dm_clone_metadata *cmd,
     struct superblock_disk *sb)
{
 sb->flags = cpu_to_le32(0UL);


 memset(sb->uuid, 0, sizeof(sb->uuid));

 sb->magic = cpu_to_le64(SUPERBLOCK_MAGIC);
 sb->version = cpu_to_le32(DM_CLONE_MAX_METADATA_VERSION);


 memcpy(&sb->metadata_space_map_root, &cmd->metadata_space_map_root,
        sizeof(cmd->metadata_space_map_root));

 sb->region_size = cpu_to_le64(cmd->region_size);
 sb->target_size = cpu_to_le64(cmd->target_size);
 sb->bitset_root = cpu_to_le64(cmd->bitset_root);
}
