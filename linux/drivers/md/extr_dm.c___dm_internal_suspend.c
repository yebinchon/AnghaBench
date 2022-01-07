
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int suspend_lock; int map; int flags; int internal_suspend_count; } ;
struct dm_table {int dummy; } ;


 int DMF_SUSPENDED_INTERNALLY ;
 int TASK_UNINTERRUPTIBLE ;
 int __dm_suspend (struct mapped_device*,struct dm_table*,unsigned int,int ,int ) ;
 scalar_t__ dm_suspended_md (struct mapped_device*) ;
 int dm_table_postsuspend_targets (struct dm_table*) ;
 int lockdep_assert_held (int *) ;
 int lockdep_is_held (int *) ;
 struct dm_table* rcu_dereference_protected (int ,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void __dm_internal_suspend(struct mapped_device *md, unsigned suspend_flags)
{
 struct dm_table *map = ((void*)0);

 lockdep_assert_held(&md->suspend_lock);

 if (md->internal_suspend_count++)
  return;

 if (dm_suspended_md(md)) {
  set_bit(DMF_SUSPENDED_INTERNALLY, &md->flags);
  return;
 }

 map = rcu_dereference_protected(md->map, lockdep_is_held(&md->suspend_lock));







 (void) __dm_suspend(md, map, suspend_flags, TASK_UNINTERRUPTIBLE,
       DMF_SUSPENDED_INTERNALLY);

 dm_table_postsuspend_targets(map);
}
