
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_sw_fence {int dummy; } ;
typedef int gfp_t ;


 int __i915_sw_fence_await_sw_fence (struct i915_sw_fence*,struct i915_sw_fence*,int *,int ) ;

int i915_sw_fence_await_sw_fence_gfp(struct i915_sw_fence *fence,
         struct i915_sw_fence *signaler,
         gfp_t gfp)
{
 return __i915_sw_fence_await_sw_fence(fence, signaler, ((void*)0), gfp);
}
