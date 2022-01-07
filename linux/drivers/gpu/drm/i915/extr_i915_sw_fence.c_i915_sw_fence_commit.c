
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_sw_fence {int dummy; } ;


 int debug_fence_activate (struct i915_sw_fence*) ;
 int i915_sw_fence_complete (struct i915_sw_fence*) ;

void i915_sw_fence_commit(struct i915_sw_fence *fence)
{
 debug_fence_activate(fence);
 i915_sw_fence_complete(fence);
}
