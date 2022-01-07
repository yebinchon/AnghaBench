
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int suspend_lock; int flags; int map; } ;
struct dm_table {int dummy; } ;


 int DMF_SUSPENDED ;
 int DMF_SUSPENDED_INTERNALLY ;
 int EINVAL ;
 int SINGLE_DEPTH_NESTING ;
 int TASK_INTERRUPTIBLE ;
 int __dm_resume (struct mapped_device*,struct dm_table*) ;
 int clear_bit (int ,int *) ;
 scalar_t__ dm_suspended_internally_md (struct mapped_device*) ;
 int dm_suspended_md (struct mapped_device*) ;
 int dm_table_get_size (struct dm_table*) ;
 int lockdep_is_held (int *) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 struct dm_table* rcu_dereference_protected (int ,int ) ;
 int wait_on_bit (int *,int ,int ) ;

int dm_resume(struct mapped_device *md)
{
 int r;
 struct dm_table *map = ((void*)0);

retry:
 r = -EINVAL;
 mutex_lock_nested(&md->suspend_lock, SINGLE_DEPTH_NESTING);

 if (!dm_suspended_md(md))
  goto out;

 if (dm_suspended_internally_md(md)) {

  mutex_unlock(&md->suspend_lock);
  r = wait_on_bit(&md->flags, DMF_SUSPENDED_INTERNALLY, TASK_INTERRUPTIBLE);
  if (r)
   return r;
  goto retry;
 }

 map = rcu_dereference_protected(md->map, lockdep_is_held(&md->suspend_lock));
 if (!map || !dm_table_get_size(map))
  goto out;

 r = __dm_resume(md, map);
 if (r)
  goto out;

 clear_bit(DMF_SUSPENDED, &md->flags);
out:
 mutex_unlock(&md->suspend_lock);

 return r;
}
