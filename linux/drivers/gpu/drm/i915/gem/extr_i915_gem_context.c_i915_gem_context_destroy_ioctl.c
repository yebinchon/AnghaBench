
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_context {int dummy; } ;
struct drm_i915_gem_context_destroy {scalar_t__ pad; int ctx_id; } ;
struct drm_i915_file_private {int context_idr_lock; int context_idr; } ;
struct drm_file {struct drm_i915_file_private* driver_priv; } ;
struct drm_device {int dummy; } ;


 int EINTR ;
 int EINVAL ;
 int ENOENT ;
 int context_close (struct i915_gem_context*) ;
 struct i915_gem_context* idr_remove (int *,int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

int i915_gem_context_destroy_ioctl(struct drm_device *dev, void *data,
       struct drm_file *file)
{
 struct drm_i915_gem_context_destroy *args = data;
 struct drm_i915_file_private *file_priv = file->driver_priv;
 struct i915_gem_context *ctx;

 if (args->pad != 0)
  return -EINVAL;

 if (!args->ctx_id)
  return -ENOENT;

 if (mutex_lock_interruptible(&file_priv->context_idr_lock))
  return -EINTR;

 ctx = idr_remove(&file_priv->context_idr, args->ctx_id);
 mutex_unlock(&file_priv->context_idr_lock);
 if (!ctx)
  return -ENOENT;

 context_close(ctx);
 return 0;
}
