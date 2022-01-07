
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int fail_io; int list; int ref_count; } ;


 int __destroy_persistent_data_objects (struct dm_cache_metadata*) ;
 int kfree (struct dm_cache_metadata*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int table_lock ;

void dm_cache_metadata_close(struct dm_cache_metadata *cmd)
{
 if (refcount_dec_and_test(&cmd->ref_count)) {
  mutex_lock(&table_lock);
  list_del(&cmd->list);
  mutex_unlock(&table_lock);

  if (!cmd->fail_io)
   __destroy_persistent_data_objects(cmd);
  kfree(cmd);
 }
}
