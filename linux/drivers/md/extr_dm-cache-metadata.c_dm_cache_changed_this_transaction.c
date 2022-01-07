
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int changed; } ;


 int READ_LOCK (struct dm_cache_metadata*) ;
 int READ_UNLOCK (struct dm_cache_metadata*) ;

int dm_cache_changed_this_transaction(struct dm_cache_metadata *cmd)
{
 int r;

 READ_LOCK(cmd);
 r = cmd->changed;
 READ_UNLOCK(cmd);

 return r;
}
