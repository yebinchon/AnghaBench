
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_clone_metadata {int lock; int sm; int fail_io; } ;
typedef int dm_block_t ;


 int EINVAL ;
 int dm_sm_get_nr_free (int ,int *) ;
 int down_read (int *) ;
 int up_read (int *) ;

int dm_clone_get_free_metadata_block_count(struct dm_clone_metadata *cmd,
        dm_block_t *result)
{
 int r = -EINVAL;

 down_read(&cmd->lock);

 if (!cmd->fail_io)
  r = dm_sm_get_nr_free(cmd->sm, result);

 up_read(&cmd->lock);

 return r;
}
