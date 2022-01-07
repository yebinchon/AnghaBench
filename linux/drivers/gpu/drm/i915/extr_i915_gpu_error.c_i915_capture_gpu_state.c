
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_gpu_state {int epoch; int display; int overlay; int capture; int uptime; int boottime; int time; struct drm_i915_private* i915; int ref; } ;
struct TYPE_4__ {int last_init_time; } ;
struct TYPE_3__ {int first_error; } ;
struct drm_i915_private {TYPE_2__ gt; TYPE_1__ gpu_error; } ;
struct compress {int dummy; } ;


 int ALLOW_FAIL ;
 int ENOMEM ;
 struct i915_gpu_state* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct i915_gpu_state*) ;
 struct i915_gpu_state* READ_ONCE (int ) ;
 int capture_find_epoch (struct i915_gpu_state*) ;
 int capture_finish (struct i915_gpu_state*) ;
 int capture_gen_state (struct i915_gpu_state*) ;
 int capture_params (struct i915_gpu_state*) ;
 int capture_reg_state (struct i915_gpu_state*) ;
 int capture_uc_state (struct i915_gpu_state*,struct compress*) ;
 int compress_fini (struct compress*) ;
 int compress_init (struct compress*) ;
 int gem_record_fences (struct i915_gpu_state*) ;
 int gem_record_rings (struct i915_gpu_state*,struct compress*) ;
 int i915_disable_error_state (struct drm_i915_private*,int ) ;
 int intel_display_capture_error_state (struct drm_i915_private*) ;
 int intel_overlay_capture_error_state (struct drm_i915_private*) ;
 int jiffies ;
 int kfree (struct i915_gpu_state*) ;
 int kref_init (int *) ;
 int ktime_get () ;
 int ktime_get_boottime () ;
 int ktime_get_real () ;
 int ktime_sub (int ,int ) ;
 struct i915_gpu_state* kzalloc (int,int ) ;

struct i915_gpu_state *
i915_capture_gpu_state(struct drm_i915_private *i915)
{
 struct i915_gpu_state *error;
 struct compress compress;


 error = READ_ONCE(i915->gpu_error.first_error);
 if (IS_ERR(error))
  return error;

 error = kzalloc(sizeof(*error), ALLOW_FAIL);
 if (!error) {
  i915_disable_error_state(i915, -ENOMEM);
  return ERR_PTR(-ENOMEM);
 }

 if (!compress_init(&compress)) {
  kfree(error);
  i915_disable_error_state(i915, -ENOMEM);
  return ERR_PTR(-ENOMEM);
 }

 kref_init(&error->ref);
 error->i915 = i915;

 error->time = ktime_get_real();
 error->boottime = ktime_get_boottime();
 error->uptime = ktime_sub(ktime_get(), i915->gt.last_init_time);
 error->capture = jiffies;

 capture_params(error);
 capture_gen_state(error);
 capture_uc_state(error, &compress);
 capture_reg_state(error);
 gem_record_fences(error);
 gem_record_rings(error, &compress);

 error->overlay = intel_overlay_capture_error_state(i915);
 error->display = intel_display_capture_error_state(i915);

 error->epoch = capture_find_epoch(error);

 capture_finish(error);
 compress_fini(&compress);

 return error;
}
