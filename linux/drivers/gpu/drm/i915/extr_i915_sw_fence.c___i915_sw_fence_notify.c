
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_sw_fence {int flags; } ;
typedef int (* i915_sw_fence_notify_t ) (struct i915_sw_fence*,int) ;
typedef enum i915_sw_fence_notify { ____Placeholder_i915_sw_fence_notify } i915_sw_fence_notify ;


 int I915_SW_FENCE_MASK ;

__attribute__((used)) static int __i915_sw_fence_notify(struct i915_sw_fence *fence,
      enum i915_sw_fence_notify state)
{
 i915_sw_fence_notify_t fn;

 fn = (i915_sw_fence_notify_t)(fence->flags & I915_SW_FENCE_MASK);
 return fn(fence, state);
}
