
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i915_address_space {int dummy; } ;
struct drm_i915_gem_vm_control {int vm_id; scalar_t__ extensions; scalar_t__ flags; } ;
struct drm_i915_file_private {int vm_idr_lock; int vm_idr; } ;
struct drm_file {struct drm_i915_file_private* driver_priv; } ;
struct drm_device {int dummy; } ;


 int EINVAL ;
 int ENOENT ;
 int i915_vm_put (struct i915_address_space*) ;
 struct i915_address_space* idr_remove (int *,int ) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

int i915_gem_vm_destroy_ioctl(struct drm_device *dev, void *data,
         struct drm_file *file)
{
 struct drm_i915_file_private *file_priv = file->driver_priv;
 struct drm_i915_gem_vm_control *args = data;
 struct i915_address_space *vm;
 int err;
 u32 id;

 if (args->flags)
  return -EINVAL;

 if (args->extensions)
  return -EINVAL;

 id = args->vm_id;
 if (!id)
  return -ENOENT;

 err = mutex_lock_interruptible(&file_priv->vm_idr_lock);
 if (err)
  return err;

 vm = idr_remove(&file_priv->vm_idr, id);

 mutex_unlock(&file_priv->vm_idr_lock);
 if (!vm)
  return -ENOENT;

 i915_vm_put(vm);
 return 0;
}
