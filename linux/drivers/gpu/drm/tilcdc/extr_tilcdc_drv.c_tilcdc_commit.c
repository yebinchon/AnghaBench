
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct drm_atomic_state {int dummy; } ;


 int drm_atomic_helper_cleanup_planes (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_commit_modeset_disables (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_commit_modeset_enables (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_commit_planes (struct drm_device*,struct drm_atomic_state*,int ) ;
 int drm_atomic_helper_prepare_planes (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_swap_state (struct drm_atomic_state*,int) ;
 int drm_atomic_helper_wait_for_vblanks (struct drm_device*,struct drm_atomic_state*) ;

__attribute__((used)) static int tilcdc_commit(struct drm_device *dev,
    struct drm_atomic_state *state,
    bool async)
{
 int ret;

 ret = drm_atomic_helper_prepare_planes(dev, state);
 if (ret)
  return ret;

 ret = drm_atomic_helper_swap_state(state, 1);
 if (ret) {
  drm_atomic_helper_cleanup_planes(dev, state);
  return ret;
 }
 drm_atomic_helper_commit_modeset_disables(dev, state);

 drm_atomic_helper_commit_planes(dev, state, 0);

 drm_atomic_helper_commit_modeset_enables(dev, state);

 drm_atomic_helper_wait_for_vblanks(dev, state);

 drm_atomic_helper_cleanup_planes(dev, state);

 return 0;
}
