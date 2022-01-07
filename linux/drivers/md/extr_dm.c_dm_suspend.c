
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int suspend_lock; int map; int flags; } ;
struct dm_table {int dummy; } ;


 int DMF_SUSPENDED ;
 int DMF_SUSPENDED_INTERNALLY ;
 int EINVAL ;
 int SINGLE_DEPTH_NESTING ;
 int TASK_INTERRUPTIBLE ;
 int __dm_suspend (struct mapped_device*,struct dm_table*,unsigned int,int ,int ) ;
 scalar_t__ dm_suspended_internally_md (struct mapped_device*) ;
 scalar_t__ dm_suspended_md (struct mapped_device*) ;
 int dm_table_postsuspend_targets (struct dm_table*) ;
 int lockdep_is_held (int *) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 struct dm_table* rcu_dereference_protected (int ,int ) ;
 int wait_on_bit (int *,int ,int ) ;

int dm_suspend(struct mapped_device *md, unsigned suspend_flags)
{
 struct dm_table *map = ((void*)0);
 int r = 0;

retry:
 mutex_lock_nested(&md->suspend_lock, SINGLE_DEPTH_NESTING);

 if (dm_suspended_md(md)) {
  r = -EINVAL;
  goto out_unlock;
 }

 if (dm_suspended_internally_md(md)) {

  mutex_unlock(&md->suspend_lock);
  r = wait_on_bit(&md->flags, DMF_SUSPENDED_INTERNALLY, TASK_INTERRUPTIBLE);
  if (r)
   return r;
  goto retry;
 }

 map = rcu_dereference_protected(md->map, lockdep_is_held(&md->suspend_lock));

 r = __dm_suspend(md, map, suspend_flags, TASK_INTERRUPTIBLE, DMF_SUSPENDED);
 if (r)
  goto out_unlock;

 dm_table_postsuspend_targets(map);

out_unlock:
 mutex_unlock(&md->suspend_lock);
 return r;
}
