
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct perf_open_properties {int dummy; } ;
struct TYPE_2__ {int lock; int initialized; } ;
struct drm_i915_private {TYPE_1__ perf; } ;
struct drm_i915_perf_open_param {int flags; int num_properties; int properties_ptr; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DRM_DEBUG (char*) ;
 int EINVAL ;
 int ENOTSUPP ;
 int I915_PERF_FLAG_DISABLED ;
 int I915_PERF_FLAG_FD_CLOEXEC ;
 int I915_PERF_FLAG_FD_NONBLOCK ;
 int i915_perf_open_ioctl_locked (struct drm_i915_private*,struct drm_i915_perf_open_param*,struct perf_open_properties*,struct drm_file*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int read_properties_unlocked (struct drm_i915_private*,int ,int ,struct perf_open_properties*) ;
 int u64_to_user_ptr (int ) ;

int i915_perf_open_ioctl(struct drm_device *dev, void *data,
    struct drm_file *file)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct drm_i915_perf_open_param *param = data;
 struct perf_open_properties props;
 u32 known_open_flags;
 int ret;

 if (!dev_priv->perf.initialized) {
  DRM_DEBUG("i915 perf interface not available for this system\n");
  return -ENOTSUPP;
 }

 known_open_flags = I915_PERF_FLAG_FD_CLOEXEC |
      I915_PERF_FLAG_FD_NONBLOCK |
      I915_PERF_FLAG_DISABLED;
 if (param->flags & ~known_open_flags) {
  DRM_DEBUG("Unknown drm_i915_perf_open_param flag\n");
  return -EINVAL;
 }

 ret = read_properties_unlocked(dev_priv,
           u64_to_user_ptr(param->properties_ptr),
           param->num_properties,
           &props);
 if (ret)
  return ret;

 mutex_lock(&dev_priv->perf.lock);
 ret = i915_perf_open_ioctl_locked(dev_priv, param, &props, file);
 mutex_unlock(&dev_priv->perf.lock);

 return ret;
}
