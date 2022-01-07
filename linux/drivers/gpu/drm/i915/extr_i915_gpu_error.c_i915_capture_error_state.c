
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct i915_gpu_state {int ref; int simulated; } ;
struct TYPE_7__ {TYPE_2__* primary; int dev; } ;
struct TYPE_5__ {int lock; struct i915_gpu_state* first_error; } ;
struct drm_i915_private {TYPE_3__ drm; TYPE_1__ gpu_error; } ;
typedef int intel_engine_mask_t ;
struct TYPE_8__ {int error_capture; } ;
struct TYPE_6__ {int index; } ;


 scalar_t__ DAY_AS_SECONDS (int) ;
 scalar_t__ DRIVER_TIMESTAMP ;
 scalar_t__ IS_ERR (struct i915_gpu_state*) ;
 scalar_t__ READ_ONCE (struct i915_gpu_state*) ;
 int __i915_gpu_state_free (int *) ;
 int dev_info (int ,char*,int ) ;
 int error_msg (struct i915_gpu_state*,int ,char const*) ;
 struct i915_gpu_state* i915_capture_gpu_state (struct drm_i915_private*) ;
 TYPE_4__ i915_modparams ;
 scalar_t__ ktime_get_real_seconds () ;
 int pr_info (char*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int xchg (int*,int) ;

void i915_capture_error_state(struct drm_i915_private *i915,
         intel_engine_mask_t engine_mask,
         const char *msg)
{
 static bool warned;
 struct i915_gpu_state *error;
 unsigned long flags;

 if (!i915_modparams.error_capture)
  return;

 if (READ_ONCE(i915->gpu_error.first_error))
  return;

 error = i915_capture_gpu_state(i915);
 if (IS_ERR(error))
  return;

 dev_info(i915->drm.dev, "%s\n", error_msg(error, engine_mask, msg));

 if (!error->simulated) {
  spin_lock_irqsave(&i915->gpu_error.lock, flags);
  if (!i915->gpu_error.first_error) {
   i915->gpu_error.first_error = error;
   error = ((void*)0);
  }
  spin_unlock_irqrestore(&i915->gpu_error.lock, flags);
 }

 if (error) {
  __i915_gpu_state_free(&error->ref);
  return;
 }

 if (!xchg(&warned, 1) &&
     ktime_get_real_seconds() - DRIVER_TIMESTAMP < DAY_AS_SECONDS(180)) {
  pr_info("GPU hangs can indicate a bug anywhere in the entire gfx stack, including userspace.\n");
  pr_info("Please file a _new_ bug report on bugs.freedesktop.org against DRI -> DRM/Intel\n");
  pr_info("drm/i915 developers can then reassign to the right component if it's not a kernel issue.\n");
  pr_info("The GPU crash dump is required to analyze GPU hangs, so please always attach it.\n");
  pr_info("GPU crash dump saved to /sys/class/drm/card%d/error\n",
   i915->drm.primary->index);
 }
}
