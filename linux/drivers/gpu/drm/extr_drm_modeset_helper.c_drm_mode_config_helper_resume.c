
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * suspend_state; } ;
struct drm_device {int fb_helper; TYPE_1__ mode_config; } ;


 int DRM_ERROR (char*,int) ;
 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int drm_atomic_helper_resume (struct drm_device*,int *) ;
 int drm_fb_helper_set_suspend_unlocked (int ,int ) ;
 int drm_kms_helper_poll_enable (struct drm_device*) ;

int drm_mode_config_helper_resume(struct drm_device *dev)
{
 int ret;

 if (!dev)
  return 0;

 if (WARN_ON(!dev->mode_config.suspend_state))
  return -EINVAL;

 ret = drm_atomic_helper_resume(dev, dev->mode_config.suspend_state);
 if (ret)
  DRM_ERROR("Failed to resume (%d)\n", ret);
 dev->mode_config.suspend_state = ((void*)0);

 drm_fb_helper_set_suspend_unlocked(dev->fb_helper, 0);
 drm_kms_helper_poll_enable(dev);

 return ret;
}
