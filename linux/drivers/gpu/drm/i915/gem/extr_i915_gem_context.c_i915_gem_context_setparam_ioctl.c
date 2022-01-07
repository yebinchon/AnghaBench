
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_context {int dummy; } ;
struct drm_i915_gem_context_param {int ctx_id; } ;
struct drm_i915_file_private {int dummy; } ;
struct drm_file {struct drm_i915_file_private* driver_priv; } ;
struct drm_device {int dummy; } ;


 int ENOENT ;
 int ctx_setparam (struct drm_i915_file_private*,struct i915_gem_context*,struct drm_i915_gem_context_param*) ;
 struct i915_gem_context* i915_gem_context_lookup (struct drm_i915_file_private*,int ) ;
 int i915_gem_context_put (struct i915_gem_context*) ;

int i915_gem_context_setparam_ioctl(struct drm_device *dev, void *data,
        struct drm_file *file)
{
 struct drm_i915_file_private *file_priv = file->driver_priv;
 struct drm_i915_gem_context_param *args = data;
 struct i915_gem_context *ctx;
 int ret;

 ctx = i915_gem_context_lookup(file_priv, args->ctx_id);
 if (!ctx)
  return -ENOENT;

 ret = ctx_setparam(file_priv, ctx, args);

 i915_gem_context_put(ctx);
 return ret;
}
