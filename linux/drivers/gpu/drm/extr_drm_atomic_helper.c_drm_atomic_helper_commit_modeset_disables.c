
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct drm_atomic_state {int dummy; } ;


 int crtc_set_mode (struct drm_device*,struct drm_atomic_state*) ;
 int disable_outputs (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_update_legacy_modeset_state (struct drm_device*,struct drm_atomic_state*) ;

void drm_atomic_helper_commit_modeset_disables(struct drm_device *dev,
            struct drm_atomic_state *old_state)
{
 disable_outputs(dev, old_state);

 drm_atomic_helper_update_legacy_modeset_state(dev, old_state);

 crtc_set_mode(dev, old_state);
}
