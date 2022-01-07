
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct drm_atomic_state {int dummy; } ;


 int drm_atomic_helper_check (struct drm_device*,struct drm_atomic_state*) ;
 int tegra_display_hub_atomic_check (struct drm_device*,struct drm_atomic_state*) ;

__attribute__((used)) static int tegra_atomic_check(struct drm_device *drm,
         struct drm_atomic_state *state)
{
 int err;

 err = drm_atomic_helper_check(drm, state);
 if (err < 0)
  return err;

 return tegra_display_hub_atomic_check(drm, state);
}
