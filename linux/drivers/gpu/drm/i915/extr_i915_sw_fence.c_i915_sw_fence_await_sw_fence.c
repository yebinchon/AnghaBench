
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_entry_t ;
struct i915_sw_fence {int dummy; } ;


 int __i915_sw_fence_await_sw_fence (struct i915_sw_fence*,struct i915_sw_fence*,int *,int ) ;

int i915_sw_fence_await_sw_fence(struct i915_sw_fence *fence,
     struct i915_sw_fence *signaler,
     wait_queue_entry_t *wq)
{
 return __i915_sw_fence_await_sw_fence(fence, signaler, wq, 0);
}
