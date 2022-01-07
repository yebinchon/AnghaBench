
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_clone_metadata {int lock; scalar_t__ fail_io; } ;


 int EINVAL ;
 int __load_bitset_in_core (struct dm_clone_metadata*) ;
 int down_write (int *) ;
 int up_write (int *) ;

int dm_clone_reload_in_core_bitset(struct dm_clone_metadata *cmd)
{
 int r = -EINVAL;

 down_write(&cmd->lock);

 if (cmd->fail_io)
  goto out;

 r = __load_bitset_in_core(cmd);
out:
 up_write(&cmd->lock);

 return r;
}
