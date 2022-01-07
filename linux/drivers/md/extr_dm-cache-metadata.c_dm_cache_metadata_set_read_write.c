
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int bm; } ;


 int WRITE_LOCK_VOID (struct dm_cache_metadata*) ;
 int WRITE_UNLOCK (struct dm_cache_metadata*) ;
 int dm_bm_set_read_write (int ) ;

void dm_cache_metadata_set_read_write(struct dm_cache_metadata *cmd)
{
 WRITE_LOCK_VOID(cmd);
 dm_bm_set_read_write(cmd->bm);
 WRITE_UNLOCK(cmd);
}
