
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct live_active {int retired; int base; } ;
struct TYPE_2__ {int struct_mutex; } ;
struct drm_i915_private {TYPE_1__ drm; int runtime_pm; } ;
typedef int intel_wakeref_t ;


 int EINVAL ;
 int EIO ;
 int I915_WAIT_LOCKED ;
 scalar_t__ IS_ERR (struct live_active*) ;
 int PTR_ERR (struct live_active*) ;
 struct live_active* __live_active_setup (struct drm_i915_private*) ;
 int __live_put (struct live_active*) ;
 int i915_active_wait (int *) ;
 scalar_t__ igt_flush_test (struct drm_i915_private*,int ) ;
 int intel_runtime_pm_get (int *) ;
 int intel_runtime_pm_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;

__attribute__((used)) static int live_active_wait(void *arg)
{
 struct drm_i915_private *i915 = arg;
 struct live_active *active;
 intel_wakeref_t wakeref;
 int err = 0;



 mutex_lock(&i915->drm.struct_mutex);
 wakeref = intel_runtime_pm_get(&i915->runtime_pm);

 active = __live_active_setup(i915);
 if (IS_ERR(active)) {
  err = PTR_ERR(active);
  goto err;
 }

 i915_active_wait(&active->base);
 if (!active->retired) {
  pr_err("i915_active not retired after waiting!\n");
  err = -EINVAL;
 }

 __live_put(active);

 if (igt_flush_test(i915, I915_WAIT_LOCKED))
  err = -EIO;

err:
 intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 mutex_unlock(&i915->drm.struct_mutex);

 return err;
}
