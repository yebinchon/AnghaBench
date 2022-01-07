
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int cache_blocks; } ;


 int READ_LOCK (struct dm_cache_metadata*) ;
 int READ_UNLOCK (struct dm_cache_metadata*) ;
 int blocks_are_unmapped_or_clean (struct dm_cache_metadata*,int ,int ,int*) ;

int dm_cache_metadata_all_clean(struct dm_cache_metadata *cmd, bool *result)
{
 int r;

 READ_LOCK(cmd);
 r = blocks_are_unmapped_or_clean(cmd, 0, cmd->cache_blocks, result);
 READ_UNLOCK(cmd);

 return r;
}
