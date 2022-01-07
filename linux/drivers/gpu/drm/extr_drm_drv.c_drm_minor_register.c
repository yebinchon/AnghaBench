
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_minor {int index; int kdev; } ;
struct drm_device {int dummy; } ;


 int DRM_DEBUG (char*,...) ;
 int DRM_ERROR (char*) ;
 int device_add (int ) ;
 int drm_debugfs_cleanup (struct drm_minor*) ;
 int drm_debugfs_init (struct drm_minor*,int ,int ) ;
 int drm_debugfs_root ;
 struct drm_minor** drm_minor_get_slot (struct drm_device*,unsigned int) ;
 int drm_minor_lock ;
 int drm_minors_idr ;
 int idr_replace (int *,struct drm_minor*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int drm_minor_register(struct drm_device *dev, unsigned int type)
{
 struct drm_minor *minor;
 unsigned long flags;
 int ret;

 DRM_DEBUG("\n");

 minor = *drm_minor_get_slot(dev, type);
 if (!minor)
  return 0;

 ret = drm_debugfs_init(minor, minor->index, drm_debugfs_root);
 if (ret) {
  DRM_ERROR("DRM: Failed to initialize /sys/kernel/debug/dri.\n");
  goto err_debugfs;
 }

 ret = device_add(minor->kdev);
 if (ret)
  goto err_debugfs;


 spin_lock_irqsave(&drm_minor_lock, flags);
 idr_replace(&drm_minors_idr, minor, minor->index);
 spin_unlock_irqrestore(&drm_minor_lock, flags);

 DRM_DEBUG("new minor registered %d\n", minor->index);
 return 0;

err_debugfs:
 drm_debugfs_cleanup(minor);
 return ret;
}
