
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_clone_metadata {int bm; } ;
struct dm_block {int dummy; } ;


 int SUPERBLOCK_LOCATION ;
 int dm_bm_write_lock (int ,int ,int *,struct dm_block**) ;
 int sb_validator ;

__attribute__((used)) static inline int superblock_write_lock(struct dm_clone_metadata *cmd,
     struct dm_block **sblock)
{
 return dm_bm_write_lock(cmd->bm, SUPERBLOCK_LOCATION, &sb_validator, sblock);
}
