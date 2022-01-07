
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; scalar_t__ first_error; } ;
struct drm_i915_private {TYPE_1__ gpu_error; } ;


 scalar_t__ ERR_PTR (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void i915_disable_error_state(struct drm_i915_private *i915, int err)
{
 spin_lock_irq(&i915->gpu_error.lock);
 if (!i915->gpu_error.first_error)
  i915->gpu_error.first_error = ERR_PTR(err);
 spin_unlock_irq(&i915->gpu_error.lock);
}
