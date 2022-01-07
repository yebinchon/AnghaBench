
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int dummy; } ;
typedef int dm_cblock_t ;


 int WRITE_LOCK (struct dm_cache_metadata*) ;
 int WRITE_UNLOCK (struct dm_cache_metadata*) ;
 int __remove (struct dm_cache_metadata*,int ) ;

int dm_cache_remove_mapping(struct dm_cache_metadata *cmd, dm_cblock_t cblock)
{
 int r;

 WRITE_LOCK(cmd);
 r = __remove(cmd, cblock);
 WRITE_UNLOCK(cmd);

 return r;
}
