
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ max_delay; scalar_t__ fmax; } ;
struct drm_i915_private {int drm; TYPE_1__ ips; } ;


 int drm_dev_put (int *) ;
 struct drm_i915_private* mchdev_get () ;
 int mchdev_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

bool i915_gpu_raise(void)
{
 struct drm_i915_private *i915;

 i915 = mchdev_get();
 if (!i915)
  return 0;

 spin_lock_irq(&mchdev_lock);
 if (i915->ips.max_delay > i915->ips.fmax)
  i915->ips.max_delay--;
 spin_unlock_irq(&mchdev_lock);

 drm_dev_put(&i915->drm);
 return 1;
}
