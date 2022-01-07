
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct i915_sw_fence {int pending; } ;


 int DEBUG_FENCE_IDLE ;
 int DEBUG_FENCE_NOTIFY ;
 int FENCE_COMPLETE ;
 int FENCE_FREE ;
 scalar_t__ NOTIFY_DONE ;
 scalar_t__ __i915_sw_fence_notify (struct i915_sw_fence*,int ) ;
 int __i915_sw_fence_wake_up_all (struct i915_sw_fence*,struct list_head*) ;
 int atomic_dec_and_test (int *) ;
 int debug_fence_assert (struct i915_sw_fence*) ;
 int debug_fence_destroy (struct i915_sw_fence*) ;
 int debug_fence_set_state (struct i915_sw_fence*,int ,int ) ;

__attribute__((used)) static void __i915_sw_fence_complete(struct i915_sw_fence *fence,
         struct list_head *continuation)
{
 debug_fence_assert(fence);

 if (!atomic_dec_and_test(&fence->pending))
  return;

 debug_fence_set_state(fence, DEBUG_FENCE_IDLE, DEBUG_FENCE_NOTIFY);

 if (__i915_sw_fence_notify(fence, FENCE_COMPLETE) != NOTIFY_DONE)
  return;

 debug_fence_set_state(fence, DEBUG_FENCE_NOTIFY, DEBUG_FENCE_IDLE);

 __i915_sw_fence_wake_up_all(fence, continuation);

 debug_fence_destroy(fence);
 __i915_sw_fence_notify(fence, FENCE_FREE);
}
