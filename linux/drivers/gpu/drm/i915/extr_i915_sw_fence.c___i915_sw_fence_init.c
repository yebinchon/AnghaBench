
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_class_key {int dummy; } ;
struct i915_sw_fence {unsigned long flags; scalar_t__ error; int pending; int wait; } ;
typedef scalar_t__ i915_sw_fence_notify_t ;


 int BUG_ON (int) ;
 unsigned long I915_SW_FENCE_MASK ;
 int __init_waitqueue_head (int *,char const*,struct lock_class_key*) ;
 int atomic_set (int *,int) ;
 int debug_fence_init (struct i915_sw_fence*) ;

void __i915_sw_fence_init(struct i915_sw_fence *fence,
     i915_sw_fence_notify_t fn,
     const char *name,
     struct lock_class_key *key)
{
 BUG_ON(!fn || (unsigned long)fn & ~I915_SW_FENCE_MASK);

 debug_fence_init(fence);

 __init_waitqueue_head(&fence->wait, name, key);
 atomic_set(&fence->pending, 1);
 fence->error = 0;

 fence->flags = (unsigned long)fn;
}
