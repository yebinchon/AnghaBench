
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_fb_helper {int delayed_hotplug; int lock; int client; int deferred_setup; } ;


 int ENODEV ;
 scalar_t__ READ_ONCE (int ) ;
 int drm_client_modeset_commit_force (int *) ;
 int drm_fb_helper_hotplug_event (struct drm_fb_helper*) ;
 int drm_fbdev_emulation ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int drm_fb_helper_restore_fbdev_mode_unlocked(struct drm_fb_helper *fb_helper)
{
 bool do_delayed;
 int ret;

 if (!drm_fbdev_emulation || !fb_helper)
  return -ENODEV;

 if (READ_ONCE(fb_helper->deferred_setup))
  return 0;

 mutex_lock(&fb_helper->lock);
 ret = drm_client_modeset_commit_force(&fb_helper->client);

 do_delayed = fb_helper->delayed_hotplug;
 if (do_delayed)
  fb_helper->delayed_hotplug = 0;
 mutex_unlock(&fb_helper->lock);

 if (do_delayed)
  drm_fb_helper_hotplug_event(fb_helper);

 return ret;
}
