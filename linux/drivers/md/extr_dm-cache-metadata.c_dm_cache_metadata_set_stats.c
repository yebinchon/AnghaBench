
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_statistics {int dummy; } ;
struct dm_cache_metadata {struct dm_cache_statistics stats; } ;


 int WRITE_LOCK_VOID (struct dm_cache_metadata*) ;
 int WRITE_UNLOCK (struct dm_cache_metadata*) ;

void dm_cache_metadata_set_stats(struct dm_cache_metadata *cmd,
     struct dm_cache_statistics *stats)
{
 WRITE_LOCK_VOID(cmd);
 cmd->stats = *stats;
 WRITE_UNLOCK(cmd);
}
