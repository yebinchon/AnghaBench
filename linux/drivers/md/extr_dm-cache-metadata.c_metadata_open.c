
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {unsigned int version; size_t policy_hint_size; int changed; int fail_io; scalar_t__ cache_blocks; int data_block_size; struct block_device* bdev; int root_lock; int ref_count; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;


 int DMERR (char*) ;
 int ENOMEM ;
 struct dm_cache_metadata* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int __begin_transaction_flags (struct dm_cache_metadata*,int ) ;
 int __create_persistent_data_objects (struct dm_cache_metadata*,int) ;
 int clear_clean_shutdown ;
 int dm_cache_metadata_close (struct dm_cache_metadata*) ;
 int init_rwsem (int *) ;
 int kfree (struct dm_cache_metadata*) ;
 struct dm_cache_metadata* kzalloc (int,int ) ;
 int refcount_set (int *,int) ;

__attribute__((used)) static struct dm_cache_metadata *metadata_open(struct block_device *bdev,
            sector_t data_block_size,
            bool may_format_device,
            size_t policy_hint_size,
            unsigned metadata_version)
{
 int r;
 struct dm_cache_metadata *cmd;

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd) {
  DMERR("could not allocate metadata struct");
  return ERR_PTR(-ENOMEM);
 }

 cmd->version = metadata_version;
 refcount_set(&cmd->ref_count, 1);
 init_rwsem(&cmd->root_lock);
 cmd->bdev = bdev;
 cmd->data_block_size = data_block_size;
 cmd->cache_blocks = 0;
 cmd->policy_hint_size = policy_hint_size;
 cmd->changed = 1;
 cmd->fail_io = 0;

 r = __create_persistent_data_objects(cmd, may_format_device);
 if (r) {
  kfree(cmd);
  return ERR_PTR(r);
 }

 r = __begin_transaction_flags(cmd, clear_clean_shutdown);
 if (r < 0) {
  dm_cache_metadata_close(cmd);
  return ERR_PTR(r);
 }

 return cmd;
}
