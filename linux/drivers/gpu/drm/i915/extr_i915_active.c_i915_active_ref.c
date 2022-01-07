
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_timeline {int mutex; } ;
struct i915_request {int dummy; } ;
struct i915_active_request {int link; int request; } ;
struct i915_active {int count; } ;


 int ENOMEM ;
 int GEM_BUG_ON (int) ;
 int INIT_LIST_HEAD (int *) ;
 int RCU_INIT_POINTER (int ,int *) ;
 int __active_del_barrier (struct i915_active*,int ) ;
 int __i915_active_request_set (struct i915_active_request*,struct i915_request*) ;
 struct i915_active_request* active_instance (struct i915_active*,struct intel_timeline*) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int i915_active_acquire (struct i915_active*) ;
 int i915_active_release (struct i915_active*) ;
 int i915_active_request_isset (struct i915_active_request*) ;
 scalar_t__ is_barrier (struct i915_active_request*) ;
 int lockdep_assert_held (int *) ;
 int node_from_active (struct i915_active_request*) ;

int i915_active_ref(struct i915_active *ref,
      struct intel_timeline *tl,
      struct i915_request *rq)
{
 struct i915_active_request *active;
 int err;

 lockdep_assert_held(&tl->mutex);


 err = i915_active_acquire(ref);
 if (err)
  return err;

 active = active_instance(ref, tl);
 if (!active) {
  err = -ENOMEM;
  goto out;
 }

 if (is_barrier(active)) {





  __active_del_barrier(ref, node_from_active(active));
  RCU_INIT_POINTER(active->request, ((void*)0));
  INIT_LIST_HEAD(&active->link);
 } else {
  if (!i915_active_request_isset(active))
   atomic_inc(&ref->count);
 }
 GEM_BUG_ON(!atomic_read(&ref->count));
 __i915_active_request_set(active, rq);

out:
 i915_active_release(ref);
 return err;
}
