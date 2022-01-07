
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_clone_metadata {int fail_io; int lock; int bm; } ;


 int EPERM ;
 int __create_persistent_data_structures (struct dm_clone_metadata*,int) ;
 int __destroy_persistent_data_structures (struct dm_clone_metadata*) ;
 scalar_t__ dm_bm_is_read_only (int ) ;
 int down_write (int *) ;
 int up_write (int *) ;

int dm_clone_metadata_abort(struct dm_clone_metadata *cmd)
{
 int r = -EPERM;

 down_write(&cmd->lock);

 if (cmd->fail_io || dm_bm_is_read_only(cmd->bm))
  goto out;

 __destroy_persistent_data_structures(cmd);

 r = __create_persistent_data_structures(cmd, 0);
 if (r) {

  cmd->fail_io = 1;
 }
out:
 up_write(&cmd->lock);

 return r;
}
