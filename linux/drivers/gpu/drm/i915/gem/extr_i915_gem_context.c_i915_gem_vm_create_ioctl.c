
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct drm_i915_file_private* file; } ;
struct i915_ppgtt {TYPE_1__ vm; } ;
struct drm_i915_private {int dummy; } ;
struct drm_i915_gem_vm_control {int vm_id; scalar_t__ extensions; scalar_t__ flags; } ;
struct drm_i915_file_private {int vm_idr_lock; int vm_idr; } ;
struct drm_file {struct drm_i915_file_private* driver_priv; } ;
struct drm_device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int GEM_BUG_ON (int) ;
 int GFP_KERNEL ;
 int HAS_FULL_PPGTT (struct drm_i915_private*) ;
 scalar_t__ IS_ERR (struct i915_ppgtt*) ;
 int PTR_ERR (struct i915_ppgtt*) ;
 struct i915_ppgtt* i915_ppgtt_create (struct drm_i915_private*) ;
 int i915_user_extensions (int ,int *,int ,struct i915_ppgtt*) ;
 int i915_vm_put (TYPE_1__*) ;
 int idr_alloc (int *,TYPE_1__*,int ,int ,int ) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 int u64_to_user_ptr (scalar_t__) ;

int i915_gem_vm_create_ioctl(struct drm_device *dev, void *data,
        struct drm_file *file)
{
 struct drm_i915_private *i915 = to_i915(dev);
 struct drm_i915_gem_vm_control *args = data;
 struct drm_i915_file_private *file_priv = file->driver_priv;
 struct i915_ppgtt *ppgtt;
 int err;

 if (!HAS_FULL_PPGTT(i915))
  return -ENODEV;

 if (args->flags)
  return -EINVAL;

 ppgtt = i915_ppgtt_create(i915);
 if (IS_ERR(ppgtt))
  return PTR_ERR(ppgtt);

 ppgtt->vm.file = file_priv;

 if (args->extensions) {
  err = i915_user_extensions(u64_to_user_ptr(args->extensions),
        ((void*)0), 0,
        ppgtt);
  if (err)
   goto err_put;
 }

 err = mutex_lock_interruptible(&file_priv->vm_idr_lock);
 if (err)
  goto err_put;

 err = idr_alloc(&file_priv->vm_idr, &ppgtt->vm, 0, 0, GFP_KERNEL);
 if (err < 0)
  goto err_unlock;

 GEM_BUG_ON(err == 0);

 mutex_unlock(&file_priv->vm_idr_lock);

 args->vm_id = err;
 return 0;

err_unlock:
 mutex_unlock(&file_priv->vm_idr_lock);
err_put:
 i915_vm_put(&ppgtt->vm);
 return err;
}
