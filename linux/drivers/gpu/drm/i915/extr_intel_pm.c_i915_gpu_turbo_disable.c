
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fstart; int max_delay; } ;
struct drm_i915_private {int drm; TYPE_1__ ips; } ;


 int drm_dev_put (int *) ;
 int ironlake_set_drps (struct drm_i915_private*,int ) ;
 struct drm_i915_private* mchdev_get () ;
 int mchdev_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

bool i915_gpu_turbo_disable(void)
{
 struct drm_i915_private *i915;
 bool ret;

 i915 = mchdev_get();
 if (!i915)
  return 0;

 spin_lock_irq(&mchdev_lock);
 i915->ips.max_delay = i915->ips.fstart;
 ret = ironlake_set_drps(i915, i915->ips.fstart);
 spin_unlock_irq(&mchdev_lock);

 drm_dev_put(&i915->drm);
 return ret;
}
