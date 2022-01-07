
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wa_lists {int dummy; } ;
struct i915_gem_context {int dummy; } ;
struct drm_i915_private {int gt; int runtime_pm; } ;
typedef int intel_wakeref_t ;


 int ALL_ENGINES ;
 int ESRCH ;
 scalar_t__ IS_ERR (struct i915_gem_context*) ;
 int PTR_ERR (struct i915_gem_context*) ;
 int i915_gem_context_lock_engines (struct i915_gem_context*) ;
 int i915_gem_context_unlock_engines (struct i915_gem_context*) ;
 int igt_global_reset_lock (int *) ;
 int igt_global_reset_unlock (int *) ;
 int intel_gt_reset (int *,int ,char*) ;
 int intel_has_gpu_reset (struct drm_i915_private*) ;
 int intel_runtime_pm_get (int *) ;
 int intel_runtime_pm_put (int *,int ) ;
 struct i915_gem_context* kernel_context (struct drm_i915_private*) ;
 int kernel_context_close (struct i915_gem_context*) ;
 int pr_info (char*) ;
 int reference_lists_fini (struct drm_i915_private*,struct wa_lists*) ;
 int reference_lists_init (struct drm_i915_private*,struct wa_lists*) ;
 int verify_wa_lists (struct i915_gem_context*,struct wa_lists*,char*) ;

__attribute__((used)) static int
live_gpu_reset_workarounds(void *arg)
{
 struct drm_i915_private *i915 = arg;
 struct i915_gem_context *ctx;
 intel_wakeref_t wakeref;
 struct wa_lists lists;
 bool ok;

 if (!intel_has_gpu_reset(i915))
  return 0;

 ctx = kernel_context(i915);
 if (IS_ERR(ctx))
  return PTR_ERR(ctx);

 i915_gem_context_lock_engines(ctx);

 pr_info("Verifying after GPU reset...\n");

 igt_global_reset_lock(&i915->gt);
 wakeref = intel_runtime_pm_get(&i915->runtime_pm);

 reference_lists_init(i915, &lists);

 ok = verify_wa_lists(ctx, &lists, "before reset");
 if (!ok)
  goto out;

 intel_gt_reset(&i915->gt, ALL_ENGINES, "live_workarounds");

 ok = verify_wa_lists(ctx, &lists, "after reset");

out:
 i915_gem_context_unlock_engines(ctx);
 kernel_context_close(ctx);
 reference_lists_fini(i915, &lists);
 intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 igt_global_reset_unlock(&i915->gt);

 return ok ? 0 : -ESRCH;
}
