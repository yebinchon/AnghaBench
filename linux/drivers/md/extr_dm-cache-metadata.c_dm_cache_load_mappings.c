
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_policy {int dummy; } ;
struct dm_cache_metadata {int dummy; } ;
typedef int load_mapping_fn ;


 int READ_LOCK (struct dm_cache_metadata*) ;
 int READ_UNLOCK (struct dm_cache_metadata*) ;
 int __load_mappings (struct dm_cache_metadata*,struct dm_cache_policy*,int ,void*) ;

int dm_cache_load_mappings(struct dm_cache_metadata *cmd,
      struct dm_cache_policy *policy,
      load_mapping_fn fn, void *context)
{
 int r;

 READ_LOCK(cmd);
 r = __load_mappings(cmd, policy, fn, context);
 READ_UNLOCK(cmd);

 return r;
}
