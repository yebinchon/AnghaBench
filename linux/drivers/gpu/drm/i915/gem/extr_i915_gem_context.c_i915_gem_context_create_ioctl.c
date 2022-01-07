
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_i915_private {int gt; } ;
struct drm_i915_gem_context_create_ext {int flags; int ctx_id; int extensions; } ;
struct drm_file {int driver_priv; } ;
struct drm_device {int struct_mutex; } ;
struct create_ext {int ctx; int fpriv; } ;
struct TYPE_5__ {int has_logical_contexts; } ;
struct TYPE_4__ {int comm; } ;


 int ARRAY_SIZE (int ) ;
 TYPE_3__* DRIVER_CAPS (struct drm_i915_private*) ;
 int DRM_DEBUG (char*,int,...) ;
 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int I915_CONTEXT_CREATE_FLAGS_UNKNOWN ;
 int I915_CONTEXT_CREATE_FLAGS_USE_EXTENSIONS ;
 scalar_t__ IS_ERR (int ) ;
 int PIDTYPE_PID ;
 int PTR_ERR (int ) ;
 scalar_t__ client_is_banned (int ) ;
 int context_close (int ) ;
 int create_extensions ;
 TYPE_1__* current ;
 int gem_context_register (int ,int ) ;
 int get_task_pid (TYPE_1__*,int ) ;
 int i915_gem_create_context (struct drm_i915_private*,int) ;
 int i915_mutex_lock_interruptible (struct drm_device*) ;
 int i915_user_extensions (int ,int ,int ,struct create_ext*) ;
 int intel_gt_terminally_wedged (int *) ;
 int mutex_unlock (int *) ;
 int pid_nr (int ) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 int u64_to_user_ptr (int ) ;

int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
      struct drm_file *file)
{
 struct drm_i915_private *i915 = to_i915(dev);
 struct drm_i915_gem_context_create_ext *args = data;
 struct create_ext ext_data;
 int ret;

 if (!DRIVER_CAPS(i915)->has_logical_contexts)
  return -ENODEV;

 if (args->flags & I915_CONTEXT_CREATE_FLAGS_UNKNOWN)
  return -EINVAL;

 ret = intel_gt_terminally_wedged(&i915->gt);
 if (ret)
  return ret;

 ext_data.fpriv = file->driver_priv;
 if (client_is_banned(ext_data.fpriv)) {
  DRM_DEBUG("client %s[%d] banned from creating ctx\n",
     current->comm,
     pid_nr(get_task_pid(current, PIDTYPE_PID)));
  return -EIO;
 }

 ret = i915_mutex_lock_interruptible(dev);
 if (ret)
  return ret;

 ext_data.ctx = i915_gem_create_context(i915, args->flags);
 mutex_unlock(&dev->struct_mutex);
 if (IS_ERR(ext_data.ctx))
  return PTR_ERR(ext_data.ctx);

 if (args->flags & I915_CONTEXT_CREATE_FLAGS_USE_EXTENSIONS) {
  ret = i915_user_extensions(u64_to_user_ptr(args->extensions),
        create_extensions,
        ARRAY_SIZE(create_extensions),
        &ext_data);
  if (ret)
   goto err_ctx;
 }

 ret = gem_context_register(ext_data.ctx, ext_data.fpriv);
 if (ret < 0)
  goto err_ctx;

 args->ctx_id = ret;
 DRM_DEBUG("HW context %d created\n", args->ctx_id);

 return 0;

err_ctx:
 context_close(ext_data.ctx);
 return ret;
}
