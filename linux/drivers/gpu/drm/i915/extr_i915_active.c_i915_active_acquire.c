
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_active {int (* active ) (struct i915_active*) ;int mutex; int count; } ;


 scalar_t__ atomic_add_unless (int *,int,int ) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int debug_active_activate (struct i915_active*) ;
 int debug_active_assert (struct i915_active*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct i915_active*) ;

int i915_active_acquire(struct i915_active *ref)
{
 int err;

 debug_active_assert(ref);
 if (atomic_add_unless(&ref->count, 1, 0))
  return 0;

 err = mutex_lock_interruptible(&ref->mutex);
 if (err)
  return err;

 if (!atomic_read(&ref->count) && ref->active)
  err = ref->active(ref);
 if (!err) {
  debug_active_activate(ref);
  atomic_inc(&ref->count);
 }

 mutex_unlock(&ref->mutex);

 return err;
}
