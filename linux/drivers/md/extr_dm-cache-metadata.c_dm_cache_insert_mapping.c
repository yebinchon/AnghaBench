
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int dummy; } ;
typedef int dm_oblock_t ;
typedef int dm_cblock_t ;


 int WRITE_LOCK (struct dm_cache_metadata*) ;
 int WRITE_UNLOCK (struct dm_cache_metadata*) ;
 int __insert (struct dm_cache_metadata*,int ,int ) ;

int dm_cache_insert_mapping(struct dm_cache_metadata *cmd,
       dm_cblock_t cblock, dm_oblock_t oblock)
{
 int r;

 WRITE_LOCK(cmd);
 r = __insert(cmd, cblock, oblock);
 WRITE_UNLOCK(cmd);

 return r;
}
