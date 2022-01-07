
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_gem_context {int dummy; } ;
struct TYPE_2__ {int struct_mutex; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
struct drm_file {int driver_priv; } ;


 struct i915_gem_context* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct i915_gem_context*) ;
 int context_close (struct i915_gem_context*) ;
 int gem_context_register (struct i915_gem_context*,int ) ;
 struct i915_gem_context* i915_gem_create_context (struct drm_i915_private*,int ) ;
 int lockdep_assert_held (int *) ;

struct i915_gem_context *
live_context(struct drm_i915_private *i915, struct drm_file *file)
{
 struct i915_gem_context *ctx;
 int err;

 lockdep_assert_held(&i915->drm.struct_mutex);

 ctx = i915_gem_create_context(i915, 0);
 if (IS_ERR(ctx))
  return ctx;

 err = gem_context_register(ctx, file->driver_priv);
 if (err < 0)
  goto err_ctx;

 return ctx;

err_ctx:
 context_close(ctx);
 return ERR_PTR(err);
}
