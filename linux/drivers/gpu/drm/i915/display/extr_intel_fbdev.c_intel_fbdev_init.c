
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_fbdev {int preferred_bpp; int helper; int hpd_lock; } ;
struct drm_i915_private {int fbdev_suspend_work; struct intel_fbdev* fbdev; } ;
struct drm_device {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HAS_DISPLAY (struct drm_i915_private*) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ WARN_ON (int) ;
 int drm_fb_helper_init (struct drm_device*,int *,int) ;
 int drm_fb_helper_prepare (struct drm_device*,int *,int *) ;
 int drm_fb_helper_single_add_all_connectors (int *) ;
 int intel_fb_helper_funcs ;
 int intel_fbdev_init_bios (struct drm_device*,struct intel_fbdev*) ;
 int intel_fbdev_suspend_worker ;
 int kfree (struct intel_fbdev*) ;
 struct intel_fbdev* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

int intel_fbdev_init(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = to_i915(dev);
 struct intel_fbdev *ifbdev;
 int ret;

 if (WARN_ON(!HAS_DISPLAY(dev_priv)))
  return -ENODEV;

 ifbdev = kzalloc(sizeof(struct intel_fbdev), GFP_KERNEL);
 if (ifbdev == ((void*)0))
  return -ENOMEM;

 mutex_init(&ifbdev->hpd_lock);
 drm_fb_helper_prepare(dev, &ifbdev->helper, &intel_fb_helper_funcs);

 if (!intel_fbdev_init_bios(dev, ifbdev))
  ifbdev->preferred_bpp = 32;

 ret = drm_fb_helper_init(dev, &ifbdev->helper, 4);
 if (ret) {
  kfree(ifbdev);
  return ret;
 }

 dev_priv->fbdev = ifbdev;
 INIT_WORK(&dev_priv->fbdev_suspend_work, intel_fbdev_suspend_worker);

 drm_fb_helper_single_add_all_connectors(&ifbdev->helper);

 return 0;
}
