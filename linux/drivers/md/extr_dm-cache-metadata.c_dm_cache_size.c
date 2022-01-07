
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int cache_blocks; } ;
typedef int dm_cblock_t ;


 int READ_LOCK (struct dm_cache_metadata*) ;
 int READ_UNLOCK (struct dm_cache_metadata*) ;

int dm_cache_size(struct dm_cache_metadata *cmd, dm_cblock_t *result)
{
 READ_LOCK(cmd);
 *result = cmd->cache_blocks;
 READ_UNLOCK(cmd);

 return 0;
}
