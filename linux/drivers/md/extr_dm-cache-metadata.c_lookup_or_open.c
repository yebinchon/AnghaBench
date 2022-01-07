
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int list; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;


 int IS_ERR (struct dm_cache_metadata*) ;
 int __destroy_persistent_data_objects (struct dm_cache_metadata*) ;
 int kfree (struct dm_cache_metadata*) ;
 int list_add (int *,int *) ;
 struct dm_cache_metadata* lookup (struct block_device*) ;
 struct dm_cache_metadata* metadata_open (struct block_device*,int ,int,size_t,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int table ;
 int table_lock ;

__attribute__((used)) static struct dm_cache_metadata *lookup_or_open(struct block_device *bdev,
      sector_t data_block_size,
      bool may_format_device,
      size_t policy_hint_size,
      unsigned metadata_version)
{
 struct dm_cache_metadata *cmd, *cmd2;

 mutex_lock(&table_lock);
 cmd = lookup(bdev);
 mutex_unlock(&table_lock);

 if (cmd)
  return cmd;

 cmd = metadata_open(bdev, data_block_size, may_format_device,
       policy_hint_size, metadata_version);
 if (!IS_ERR(cmd)) {
  mutex_lock(&table_lock);
  cmd2 = lookup(bdev);
  if (cmd2) {
   mutex_unlock(&table_lock);
   __destroy_persistent_data_objects(cmd);
   kfree(cmd);
   return cmd2;
  }
  list_add(&cmd->list, &table);
  mutex_unlock(&table_lock);
 }

 return cmd;
}
