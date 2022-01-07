
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_gem_context {int dummy; } ;
struct TYPE_2__ {int struct_mutex; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
struct drm_i915_file_private {int context_idr_lock; int vm_idr_lock; int context_idr; int vm_idr; } ;
struct drm_file {struct drm_i915_file_private* driver_priv; } ;


 int GEM_BUG_ON (int) ;
 scalar_t__ IS_ERR (struct i915_gem_context*) ;
 int PTR_ERR (struct i915_gem_context*) ;
 int context_close (struct i915_gem_context*) ;
 int gem_context_register (struct i915_gem_context*,struct drm_i915_file_private*) ;
 int i915_gem_context_is_kernel (struct i915_gem_context*) ;
 struct i915_gem_context* i915_gem_create_context (struct drm_i915_private*,int ) ;
 int idr_destroy (int *) ;
 int idr_init (int *) ;
 int idr_init_base (int *,int) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int i915_gem_context_open(struct drm_i915_private *i915,
     struct drm_file *file)
{
 struct drm_i915_file_private *file_priv = file->driver_priv;
 struct i915_gem_context *ctx;
 int err;

 mutex_init(&file_priv->context_idr_lock);
 mutex_init(&file_priv->vm_idr_lock);

 idr_init(&file_priv->context_idr);
 idr_init_base(&file_priv->vm_idr, 1);

 mutex_lock(&i915->drm.struct_mutex);
 ctx = i915_gem_create_context(i915, 0);
 mutex_unlock(&i915->drm.struct_mutex);
 if (IS_ERR(ctx)) {
  err = PTR_ERR(ctx);
  goto err;
 }

 err = gem_context_register(ctx, file_priv);
 if (err < 0)
  goto err_ctx;

 GEM_BUG_ON(i915_gem_context_is_kernel(ctx));
 GEM_BUG_ON(err > 0);

 return 0;

err_ctx:
 context_close(ctx);
err:
 idr_destroy(&file_priv->vm_idr);
 idr_destroy(&file_priv->context_idr);
 mutex_destroy(&file_priv->vm_idr_lock);
 mutex_destroy(&file_priv->context_idr_lock);
 return err;
}
