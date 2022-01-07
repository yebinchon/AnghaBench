
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_sw_fence {int pending; } ;


 int WARN_ON (int) ;
 int atomic_inc_return (int *) ;
 int debug_fence_assert (struct i915_sw_fence*) ;

void i915_sw_fence_await(struct i915_sw_fence *fence)
{
 debug_fence_assert(fence);
 WARN_ON(atomic_inc_return(&fence->pending) <= 1);
}
