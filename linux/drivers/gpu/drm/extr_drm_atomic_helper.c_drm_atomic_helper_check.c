
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ normalize_zpos; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_atomic_state {int async_update; scalar_t__ legacy_cursor_update; } ;


 int drm_atomic_helper_async_check (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_check_modeset (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_check_planes (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_normalize_zpos (struct drm_device*,struct drm_atomic_state*) ;
 int drm_self_refresh_helper_alter_state (struct drm_atomic_state*) ;

int drm_atomic_helper_check(struct drm_device *dev,
       struct drm_atomic_state *state)
{
 int ret;

 ret = drm_atomic_helper_check_modeset(dev, state);
 if (ret)
  return ret;

 if (dev->mode_config.normalize_zpos) {
  ret = drm_atomic_normalize_zpos(dev, state);
  if (ret)
   return ret;
 }

 ret = drm_atomic_helper_check_planes(dev, state);
 if (ret)
  return ret;

 if (state->legacy_cursor_update)
  state->async_update = !drm_atomic_helper_async_check(dev, state);

 drm_self_refresh_helper_alter_state(state);

 return ret;
}
