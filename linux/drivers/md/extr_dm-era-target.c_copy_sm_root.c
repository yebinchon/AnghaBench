
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct superblock_disk {int metadata_space_map_root; } ;
struct era_metadata {int metadata_space_map_root; } ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static void copy_sm_root(struct era_metadata *md, struct superblock_disk *disk)
{
 memcpy(&disk->metadata_space_map_root,
        &md->metadata_space_map_root,
        sizeof(md->metadata_space_map_root));
}
