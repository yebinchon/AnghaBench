
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int awake; } ;
struct drm_i915_private {int drm; TYPE_1__ gt; } ;


 int drm_dev_put (int *) ;
 struct drm_i915_private* mchdev_get () ;

bool i915_gpu_busy(void)
{
 struct drm_i915_private *i915;
 bool ret;

 i915 = mchdev_get();
 if (!i915)
  return 0;

 ret = i915->gt.awake;

 drm_dev_put(&i915->drm);
 return ret;
}
