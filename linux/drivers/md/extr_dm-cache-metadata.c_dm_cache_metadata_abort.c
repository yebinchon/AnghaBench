
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int fail_io; } ;


 int WRITE_LOCK (struct dm_cache_metadata*) ;
 int WRITE_UNLOCK (struct dm_cache_metadata*) ;
 int __create_persistent_data_objects (struct dm_cache_metadata*,int) ;
 int __destroy_persistent_data_objects (struct dm_cache_metadata*) ;

int dm_cache_metadata_abort(struct dm_cache_metadata *cmd)
{
 int r;

 WRITE_LOCK(cmd);
 __destroy_persistent_data_objects(cmd);
 r = __create_persistent_data_objects(cmd, 0);
 if (r)
  cmd->fail_io = 1;
 WRITE_UNLOCK(cmd);

 return r;
}
