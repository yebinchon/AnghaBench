
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_sw_fence {int dummy; } ;


 int CONFIG_DRM_I915_SW_FENCE_CHECK_DAG ;
 int IS_ENABLED (int ) ;
 int __i915_sw_fence_check_if_after (struct i915_sw_fence*,struct i915_sw_fence const* const) ;
 int __i915_sw_fence_clear_checked_bit (struct i915_sw_fence*) ;
 int i915_sw_fence_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool i915_sw_fence_check_if_after(struct i915_sw_fence *fence,
      const struct i915_sw_fence * const signaler)
{
 unsigned long flags;
 bool err;

 if (!IS_ENABLED(CONFIG_DRM_I915_SW_FENCE_CHECK_DAG))
  return 0;

 spin_lock_irqsave(&i915_sw_fence_lock, flags);
 err = __i915_sw_fence_check_if_after(fence, signaler);
 __i915_sw_fence_clear_checked_bit(fence);
 spin_unlock_irqrestore(&i915_sw_fence_lock, flags);

 return err;
}
