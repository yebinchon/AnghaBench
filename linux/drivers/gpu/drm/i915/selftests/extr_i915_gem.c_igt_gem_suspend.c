
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_gem_context {int dummy; } ;
struct TYPE_2__ {int struct_mutex; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
typedef struct i915_gem_context drm_file ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct i915_gem_context*) ;
 int PTR_ERR (struct i915_gem_context*) ;
 struct i915_gem_context* live_context (struct drm_i915_private*,struct i915_gem_context*) ;
 struct i915_gem_context* mock_file (struct drm_i915_private*) ;
 int mock_file_free (struct drm_i915_private*,struct i915_gem_context*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_prepare (struct drm_i915_private*) ;
 int pm_resume (struct drm_i915_private*) ;
 int pm_suspend (struct drm_i915_private*) ;
 int simulate_hibernate (struct drm_i915_private*) ;
 int switch_to_context (struct drm_i915_private*,struct i915_gem_context*) ;

__attribute__((used)) static int igt_gem_suspend(void *arg)
{
 struct drm_i915_private *i915 = arg;
 struct i915_gem_context *ctx;
 struct drm_file *file;
 int err;

 file = mock_file(i915);
 if (IS_ERR(file))
  return PTR_ERR(file);

 err = -ENOMEM;
 mutex_lock(&i915->drm.struct_mutex);
 ctx = live_context(i915, file);
 if (!IS_ERR(ctx))
  err = switch_to_context(i915, ctx);
 mutex_unlock(&i915->drm.struct_mutex);
 if (err)
  goto out;

 err = pm_prepare(i915);
 if (err)
  goto out;

 pm_suspend(i915);


 simulate_hibernate(i915);

 pm_resume(i915);

 mutex_lock(&i915->drm.struct_mutex);
 err = switch_to_context(i915, ctx);
 mutex_unlock(&i915->drm.struct_mutex);
out:
 mock_file_free(i915, file);
 return err;
}
