
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct era_metadata {int bm; } ;
struct dm_block {int dummy; } ;


 int SUPERBLOCK_LOCATION ;
 int dm_bm_write_lock (int ,int ,int *,struct dm_block**) ;
 int sb_validator ;

__attribute__((used)) static int superblock_lock(struct era_metadata *md,
      struct dm_block **sblock)
{
 return dm_bm_write_lock(md->bm, SUPERBLOCK_LOCATION,
    &sb_validator, sblock);
}
