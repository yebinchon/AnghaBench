
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_policy {int dummy; } ;
struct dm_cache_metadata {int dummy; } ;


 int WRITE_LOCK (struct dm_cache_metadata*) ;
 int WRITE_UNLOCK (struct dm_cache_metadata*) ;
 int write_hints (struct dm_cache_metadata*,struct dm_cache_policy*) ;

int dm_cache_write_hints(struct dm_cache_metadata *cmd, struct dm_cache_policy *policy)
{
 int r;

 WRITE_LOCK(cmd);
 r = write_hints(cmd, policy);
 WRITE_UNLOCK(cmd);

 return r;
}
