
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_fbdev {int helper; } ;
struct drm_i915_private {int fbdev_suspend_work; struct intel_fbdev* fbdev; } ;


 int cancel_work_sync (int *) ;
 int current_is_async () ;
 int drm_fb_helper_unregister_fbi (int *) ;
 int intel_fbdev_sync (struct intel_fbdev*) ;

void intel_fbdev_unregister(struct drm_i915_private *dev_priv)
{
 struct intel_fbdev *ifbdev = dev_priv->fbdev;

 if (!ifbdev)
  return;

 cancel_work_sync(&dev_priv->fbdev_suspend_work);
 if (!current_is_async())
  intel_fbdev_sync(ifbdev);

 drm_fb_helper_unregister_fbi(&ifbdev->helper);
}
