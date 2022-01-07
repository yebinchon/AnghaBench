
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct drm_atomic_state* suspend_state; } ;
struct drm_device {TYPE_1__ mode_config; int fb_helper; } ;
struct drm_atomic_state {int dummy; } ;


 scalar_t__ IS_ERR (struct drm_atomic_state*) ;
 int PTR_ERR (struct drm_atomic_state*) ;
 struct drm_atomic_state* drm_atomic_helper_suspend (struct drm_device*) ;
 int drm_fb_helper_set_suspend_unlocked (int ,int) ;
 int drm_kms_helper_poll_disable (struct drm_device*) ;
 int drm_kms_helper_poll_enable (struct drm_device*) ;

int drm_mode_config_helper_suspend(struct drm_device *dev)
{
 struct drm_atomic_state *state;

 if (!dev)
  return 0;

 drm_kms_helper_poll_disable(dev);
 drm_fb_helper_set_suspend_unlocked(dev->fb_helper, 1);
 state = drm_atomic_helper_suspend(dev);
 if (IS_ERR(state)) {
  drm_fb_helper_set_suspend_unlocked(dev->fb_helper, 0);
  drm_kms_helper_poll_enable(dev);
  return PTR_ERR(state);
 }

 dev->mode_config.suspend_state = state;

 return 0;
}
