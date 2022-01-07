
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_statistics {int dummy; } ;
struct dm_cache_metadata {struct dm_cache_statistics stats; } ;


 int READ_LOCK_VOID (struct dm_cache_metadata*) ;
 int READ_UNLOCK (struct dm_cache_metadata*) ;

void dm_cache_metadata_get_stats(struct dm_cache_metadata *cmd,
     struct dm_cache_statistics *stats)
{
 READ_LOCK_VOID(cmd);
 *stats = cmd->stats;
 READ_UNLOCK(cmd);
}
