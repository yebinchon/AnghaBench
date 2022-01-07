
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_sw_fence {int dummy; } ;


 scalar_t__ WARN_ON (int ) ;
 int __i915_sw_fence_complete (struct i915_sw_fence*,int *) ;
 int debug_fence_assert (struct i915_sw_fence*) ;
 int i915_sw_fence_done (struct i915_sw_fence*) ;

void i915_sw_fence_complete(struct i915_sw_fence *fence)
{
 debug_fence_assert(fence);

 if (WARN_ON(i915_sw_fence_done(fence)))
  return;

 __i915_sw_fence_complete(fence, ((void*)0));
}
