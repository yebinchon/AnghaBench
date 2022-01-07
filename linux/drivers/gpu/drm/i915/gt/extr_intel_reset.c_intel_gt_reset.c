
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_15__ {int mutex; int flags; } ;
struct intel_gt {TYPE_3__ reset; TYPE_4__* i915; } ;
typedef int intel_engine_mask_t ;
struct TYPE_17__ {scalar_t__ reset; } ;
struct TYPE_14__ {int dev; } ;
struct TYPE_13__ {int reset_count; } ;
struct TYPE_16__ {TYPE_2__ drm; TYPE_1__ gpu_error; } ;
struct TYPE_12__ {scalar_t__ gpu_reset_clobbers_display; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int DRM_ERROR (char*,int) ;
 int GEM_BUG_ON (int) ;
 int GEM_TRACE (char*,int ) ;
 int I915_RESET_BACKOFF ;
 TYPE_10__* INTEL_INFO (TYPE_4__*) ;
 int TAINT_WARN ;
 int __intel_gt_set_wedged (struct intel_gt*) ;
 int __intel_gt_unset_wedged (struct intel_gt*) ;
 int add_taint_for_CI (int ) ;
 int atomic_inc (int *) ;
 int dev_err (int ,char*) ;
 int dev_notice (int ,char*,char const*) ;
 scalar_t__ do_reset (struct intel_gt*,int ) ;
 int i915_gem_init_hw (TYPE_4__*) ;
 TYPE_8__ i915_modparams ;
 int intel_gt_queue_hangcheck (struct intel_gt*) ;
 int intel_has_gpu_reset (TYPE_4__*) ;
 int intel_overlay_reset (TYPE_4__*) ;
 int intel_runtime_pm_disable_interrupts (TYPE_4__*) ;
 int intel_runtime_pm_enable_interrupts (TYPE_4__*) ;
 int might_sleep () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reset_finish (struct intel_gt*,int ) ;
 int reset_prepare (struct intel_gt*) ;
 int resume (struct intel_gt*) ;
 int test_bit (int ,int *) ;

void intel_gt_reset(struct intel_gt *gt,
      intel_engine_mask_t stalled_mask,
      const char *reason)
{
 intel_engine_mask_t awake;
 int ret;

 GEM_TRACE("flags=%lx\n", gt->reset.flags);

 might_sleep();
 GEM_BUG_ON(!test_bit(I915_RESET_BACKOFF, &gt->reset.flags));
 mutex_lock(&gt->reset.mutex);


 if (!__intel_gt_unset_wedged(gt))
  goto unlock;

 if (reason)
  dev_notice(gt->i915->drm.dev,
      "Resetting chip for %s\n", reason);
 atomic_inc(&gt->i915->gpu_error.reset_count);

 awake = reset_prepare(gt);

 if (!intel_has_gpu_reset(gt->i915)) {
  if (i915_modparams.reset)
   dev_err(gt->i915->drm.dev, "GPU reset not supported\n");
  else
   DRM_DEBUG_DRIVER("GPU reset disabled\n");
  goto error;
 }

 if (INTEL_INFO(gt->i915)->gpu_reset_clobbers_display)
  intel_runtime_pm_disable_interrupts(gt->i915);

 if (do_reset(gt, stalled_mask)) {
  dev_err(gt->i915->drm.dev, "Failed to reset chip\n");
  goto taint;
 }

 if (INTEL_INFO(gt->i915)->gpu_reset_clobbers_display)
  intel_runtime_pm_enable_interrupts(gt->i915);

 intel_overlay_reset(gt->i915);
 ret = i915_gem_init_hw(gt->i915);
 if (ret) {
  DRM_ERROR("Failed to initialise HW following reset (%d)\n",
     ret);
  goto taint;
 }

 ret = resume(gt);
 if (ret)
  goto taint;

 intel_gt_queue_hangcheck(gt);

finish:
 reset_finish(gt, awake);
unlock:
 mutex_unlock(&gt->reset.mutex);
 return;

taint:
 add_taint_for_CI(TAINT_WARN);
error:
 __intel_gt_set_wedged(gt);
 goto finish;
}
