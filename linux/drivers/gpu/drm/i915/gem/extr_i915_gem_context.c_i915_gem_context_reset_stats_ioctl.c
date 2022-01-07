
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_context {int active_count; int guilty_count; } ;
struct drm_i915_reset_stats {void* batch_pending; void* batch_active; scalar_t__ reset_count; int ctx_id; scalar_t__ pad; scalar_t__ flags; } ;
struct drm_i915_private {int gpu_error; } ;
struct drm_file {int driver_priv; } ;
struct drm_device {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int ENOENT ;
 struct i915_gem_context* __i915_gem_context_lookup_rcu (int ,int ) ;
 void* atomic_read (int *) ;
 scalar_t__ capable (int ) ;
 scalar_t__ i915_reset_count (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

int i915_gem_context_reset_stats_ioctl(struct drm_device *dev,
           void *data, struct drm_file *file)
{
 struct drm_i915_private *dev_priv = to_i915(dev);
 struct drm_i915_reset_stats *args = data;
 struct i915_gem_context *ctx;
 int ret;

 if (args->flags || args->pad)
  return -EINVAL;

 ret = -ENOENT;
 rcu_read_lock();
 ctx = __i915_gem_context_lookup_rcu(file->driver_priv, args->ctx_id);
 if (!ctx)
  goto out;
 if (capable(CAP_SYS_ADMIN))
  args->reset_count = i915_reset_count(&dev_priv->gpu_error);
 else
  args->reset_count = 0;

 args->batch_active = atomic_read(&ctx->guilty_count);
 args->batch_pending = atomic_read(&ctx->active_count);

 ret = 0;
out:
 rcu_read_unlock();
 return ret;
}
