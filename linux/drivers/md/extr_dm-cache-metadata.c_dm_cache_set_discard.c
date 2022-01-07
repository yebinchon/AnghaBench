
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int dummy; } ;
typedef int dm_dblock_t ;


 int WRITE_LOCK (struct dm_cache_metadata*) ;
 int WRITE_UNLOCK (struct dm_cache_metadata*) ;
 int __discard (struct dm_cache_metadata*,int ,int) ;

int dm_cache_set_discard(struct dm_cache_metadata *cmd,
    dm_dblock_t dblock, bool discard)
{
 int r;

 WRITE_LOCK(cmd);
 r = __discard(cmd, dblock, discard);
 WRITE_UNLOCK(cmd);

 return r;
}
