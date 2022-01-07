
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_fb_helper {int delayed_hotplug; int fbdev; int lock; TYPE_1__* fb; int client; int dev; int preferred_bpp; scalar_t__ deferred_setup; } ;
struct TYPE_2__ {int height; int width; } ;


 int DRM_DEBUG_KMS (char*) ;
 int __drm_fb_helper_initial_config_and_unlock (struct drm_fb_helper*,int ) ;
 int drm_client_modeset_probe (int *,int ,int ) ;
 int drm_fb_helper_set_par (int ) ;
 int drm_fbdev_emulation ;
 int drm_master_internal_acquire (int ) ;
 int drm_master_internal_release (int ) ;
 int drm_setup_crtcs_fb (struct drm_fb_helper*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int drm_fb_helper_hotplug_event(struct drm_fb_helper *fb_helper)
{
 int err = 0;

 if (!drm_fbdev_emulation || !fb_helper)
  return 0;

 mutex_lock(&fb_helper->lock);
 if (fb_helper->deferred_setup) {
  err = __drm_fb_helper_initial_config_and_unlock(fb_helper,
    fb_helper->preferred_bpp);
  return err;
 }

 if (!fb_helper->fb || !drm_master_internal_acquire(fb_helper->dev)) {
  fb_helper->delayed_hotplug = 1;
  mutex_unlock(&fb_helper->lock);
  return err;
 }

 drm_master_internal_release(fb_helper->dev);

 DRM_DEBUG_KMS("\n");

 drm_client_modeset_probe(&fb_helper->client, fb_helper->fb->width, fb_helper->fb->height);
 drm_setup_crtcs_fb(fb_helper);
 mutex_unlock(&fb_helper->lock);

 drm_fb_helper_set_par(fb_helper->fbdev);

 return 0;
}
