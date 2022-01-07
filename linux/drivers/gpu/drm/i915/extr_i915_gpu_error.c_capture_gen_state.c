
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_gpu_state {int iommu; int driver_caps; int runtime_info; int device_info; int suspend_count; int reset_count; int suspended; int wakelock; int awake; struct drm_i915_private* i915; } ;
struct TYPE_4__ {int suspended; int wakeref_count; } ;
struct TYPE_3__ {int awake; } ;
struct drm_i915_private {int caps; int suspend_count; int gpu_error; TYPE_2__ runtime_pm; TYPE_1__ gt; } ;


 int INTEL_INFO (struct drm_i915_private*) ;
 int RUNTIME_INFO (struct drm_i915_private*) ;
 int atomic_read (int *) ;
 int i915_reset_count (int *) ;
 int intel_iommu_gfx_mapped ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static void capture_gen_state(struct i915_gpu_state *error)
{
 struct drm_i915_private *i915 = error->i915;

 error->awake = i915->gt.awake;
 error->wakelock = atomic_read(&i915->runtime_pm.wakeref_count);
 error->suspended = i915->runtime_pm.suspended;

 error->iommu = -1;



 error->reset_count = i915_reset_count(&i915->gpu_error);
 error->suspend_count = i915->suspend_count;

 memcpy(&error->device_info,
        INTEL_INFO(i915),
        sizeof(error->device_info));
 memcpy(&error->runtime_info,
        RUNTIME_INFO(i915),
        sizeof(error->runtime_info));
 error->driver_caps = i915->caps;
}
