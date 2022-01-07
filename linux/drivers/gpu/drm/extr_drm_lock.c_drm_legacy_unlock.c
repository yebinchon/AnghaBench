
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_master {int lock; } ;
struct drm_lock {scalar_t__ context; } ;
struct drm_file {struct drm_master* master; } ;
struct drm_device {int dummy; } ;


 int DRIVER_LEGACY ;
 int DRM_ERROR (char*,int ,scalar_t__) ;
 scalar_t__ DRM_KERNEL_CONTEXT ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int current ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 scalar_t__ drm_legacy_lock_free (int *,scalar_t__) ;
 int task_pid_nr (int ) ;

int drm_legacy_unlock(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 struct drm_lock *lock = data;
 struct drm_master *master = file_priv->master;

 if (!drm_core_check_feature(dev, DRIVER_LEGACY))
  return -EOPNOTSUPP;

 if (lock->context == DRM_KERNEL_CONTEXT) {
  DRM_ERROR("Process %d using kernel context %d\n",
     task_pid_nr(current), lock->context);
  return -EINVAL;
 }

 if (drm_legacy_lock_free(&master->lock, lock->context)) {

 }

 return 0;
}
