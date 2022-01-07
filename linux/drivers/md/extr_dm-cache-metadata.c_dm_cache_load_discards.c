
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int dummy; } ;
typedef int load_discard_fn ;


 int READ_LOCK (struct dm_cache_metadata*) ;
 int READ_UNLOCK (struct dm_cache_metadata*) ;
 int __load_discards (struct dm_cache_metadata*,int ,void*) ;

int dm_cache_load_discards(struct dm_cache_metadata *cmd,
      load_discard_fn fn, void *context)
{
 int r;

 READ_LOCK(cmd);
 r = __load_discards(cmd, fn, context);
 READ_UNLOCK(cmd);

 return r;
}
