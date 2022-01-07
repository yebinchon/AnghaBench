
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_gem_context {TYPE_2__* i915; int mutex; struct i915_address_space* vm; } ;
struct i915_address_space {int dummy; } ;
struct drm_i915_gem_context_param {int value; scalar_t__ size; } ;
struct drm_i915_file_private {int vm_idr_lock; int vm_idr; } ;
struct TYPE_3__ {int struct_mutex; } ;
struct TYPE_4__ {TYPE_1__ drm; } ;


 int ALL_ENGINES ;
 int EINVAL ;
 int ENODEV ;
 int ENOENT ;
 struct i915_address_space* __set_ppgtt (struct i915_gem_context*,struct i915_address_space*) ;
 int context_barrier_task (struct i915_gem_context*,int ,int ,int ,int ,struct i915_address_space*) ;
 int emit_ppgtt_update ;
 int i915_vm_get (struct i915_address_space*) ;
 int i915_vm_put (struct i915_address_space*) ;
 struct i915_address_space* idr_find (int *,int ) ;
 int lut_close (struct i915_gem_context*) ;
 int mutex_lock (int *) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int set_ppgtt_barrier ;
 int skip_ppgtt_update ;
 scalar_t__ upper_32_bits (int ) ;

__attribute__((used)) static int set_ppgtt(struct drm_i915_file_private *file_priv,
       struct i915_gem_context *ctx,
       struct drm_i915_gem_context_param *args)
{
 struct i915_address_space *vm, *old;
 int err;

 if (args->size)
  return -EINVAL;

 if (!ctx->vm)
  return -ENODEV;

 if (upper_32_bits(args->value))
  return -ENOENT;

 err = mutex_lock_interruptible(&file_priv->vm_idr_lock);
 if (err)
  return err;

 vm = idr_find(&file_priv->vm_idr, args->value);
 if (vm)
  i915_vm_get(vm);
 mutex_unlock(&file_priv->vm_idr_lock);
 if (!vm)
  return -ENOENT;

 err = mutex_lock_interruptible(&ctx->i915->drm.struct_mutex);
 if (err)
  goto out;

 if (vm == ctx->vm)
  goto unlock;


 mutex_lock(&ctx->mutex);
 lut_close(ctx);
 mutex_unlock(&ctx->mutex);

 old = __set_ppgtt(ctx, vm);






 err = context_barrier_task(ctx, ALL_ENGINES,
       skip_ppgtt_update,
       emit_ppgtt_update,
       set_ppgtt_barrier,
       old);
 if (err) {
  i915_vm_put(__set_ppgtt(ctx, old));
  i915_vm_put(old);
 }

unlock:
 mutex_unlock(&ctx->i915->drm.struct_mutex);

out:
 i915_vm_put(vm);
 return err;
}
