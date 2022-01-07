
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_sw_fence {int flags; } ;


 int I915_SW_FENCE_MASK ;

__attribute__((used)) static void *i915_sw_fence_debug_hint(void *addr)
{
 return (void *)(((struct i915_sw_fence *)addr)->flags & I915_SW_FENCE_MASK);
}
