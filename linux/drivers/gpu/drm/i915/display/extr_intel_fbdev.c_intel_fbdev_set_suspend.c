
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {struct fb_info* fbdev; } ;
struct intel_fbdev {TYPE_3__ helper; TYPE_1__* fb; int vma; } ;
struct fb_info {int screen_size; int screen_base; } ;
struct drm_i915_private {int fbdev_suspend_work; struct intel_fbdev* fbdev; } ;
struct drm_device {int dummy; } ;
struct TYPE_5__ {scalar_t__ stolen; } ;
struct TYPE_4__ {int base; } ;


 int FBINFO_STATE_RUNNING ;
 int WARN_ON (int) ;
 int console_lock () ;
 int console_trylock () ;
 int console_unlock () ;
 int drm_fb_helper_set_suspend (TYPE_3__*,int) ;
 int flush_work (int *) ;
 TYPE_2__* intel_fb_obj (int *) ;
 int intel_fbdev_hpd_set_suspend (struct intel_fbdev*,int) ;
 int memset_io (int ,int ,int ) ;
 int schedule_work (int *) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

void intel_fbdev_set_suspend(struct drm_device *dev, int state, bool synchronous)
{
 struct drm_i915_private *dev_priv = to_i915(dev);
 struct intel_fbdev *ifbdev = dev_priv->fbdev;
 struct fb_info *info;

 if (!ifbdev || !ifbdev->vma)
  return;

 info = ifbdev->helper.fbdev;

 if (synchronous) {







  if (state != FBINFO_STATE_RUNNING)
   flush_work(&dev_priv->fbdev_suspend_work);

  console_lock();
 } else {





  WARN_ON(state != FBINFO_STATE_RUNNING);
  if (!console_trylock()) {



   schedule_work(&dev_priv->fbdev_suspend_work);
   return;
  }
 }





 if (state == FBINFO_STATE_RUNNING &&
     intel_fb_obj(&ifbdev->fb->base)->stolen)
  memset_io(info->screen_base, 0, info->screen_size);

 drm_fb_helper_set_suspend(&ifbdev->helper, state);
 console_unlock();

 intel_fbdev_hpd_set_suspend(ifbdev, state);
}
