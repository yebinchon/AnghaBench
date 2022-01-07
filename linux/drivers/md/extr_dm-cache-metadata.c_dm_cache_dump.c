
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int dummy; } ;


 int READ_LOCK_VOID (struct dm_cache_metadata*) ;
 int READ_UNLOCK (struct dm_cache_metadata*) ;
 int __dump_mappings (struct dm_cache_metadata*) ;

void dm_cache_dump(struct dm_cache_metadata *cmd)
{
 READ_LOCK_VOID(cmd);
 __dump_mappings(cmd);
 READ_UNLOCK(cmd);
}
