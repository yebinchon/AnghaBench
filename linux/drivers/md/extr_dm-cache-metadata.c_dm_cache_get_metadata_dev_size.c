
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int metadata_sm; int fail_io; } ;
typedef int dm_block_t ;


 int EINVAL ;
 int READ_LOCK (struct dm_cache_metadata*) ;
 int READ_UNLOCK (struct dm_cache_metadata*) ;
 int dm_sm_get_nr_blocks (int ,int *) ;

int dm_cache_get_metadata_dev_size(struct dm_cache_metadata *cmd,
       dm_block_t *result)
{
 int r = -EINVAL;

 READ_LOCK(cmd);
 if (!cmd->fail_io)
  r = dm_sm_get_nr_blocks(cmd->metadata_sm, result);
 READ_UNLOCK(cmd);

 return r;
}
