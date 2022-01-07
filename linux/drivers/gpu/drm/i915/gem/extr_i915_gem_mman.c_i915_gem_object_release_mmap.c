
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int mutex; } ;
struct TYPE_6__ {TYPE_2__ vm; } ;
struct drm_i915_private {int runtime_pm; TYPE_3__ ggtt; } ;
struct TYPE_4__ {int dev; } ;
struct drm_i915_gem_object {int userfault_count; TYPE_1__ base; } ;
typedef int intel_wakeref_t ;


 int __i915_gem_object_release_mmap (struct drm_i915_gem_object*) ;
 int intel_runtime_pm_get (int *) ;
 int intel_runtime_pm_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct drm_i915_private* to_i915 (int ) ;
 int wmb () ;

void i915_gem_object_release_mmap(struct drm_i915_gem_object *obj)
{
 struct drm_i915_private *i915 = to_i915(obj->base.dev);
 intel_wakeref_t wakeref;
 wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 mutex_lock(&i915->ggtt.vm.mutex);

 if (!obj->userfault_count)
  goto out;

 __i915_gem_object_release_mmap(obj);
 wmb();

out:
 mutex_unlock(&i915->ggtt.vm.mutex);
 intel_runtime_pm_put(&i915->runtime_pm, wakeref);
}
