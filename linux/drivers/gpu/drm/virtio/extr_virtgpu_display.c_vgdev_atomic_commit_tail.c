
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct drm_atomic_state {struct drm_device* dev; } ;


 int drm_atomic_helper_cleanup_planes (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_commit_hw_done (struct drm_atomic_state*) ;
 int drm_atomic_helper_commit_modeset_disables (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_commit_modeset_enables (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_commit_planes (struct drm_device*,struct drm_atomic_state*,int ) ;
 int drm_atomic_helper_wait_for_vblanks (struct drm_device*,struct drm_atomic_state*) ;

__attribute__((used)) static void vgdev_atomic_commit_tail(struct drm_atomic_state *state)
{
 struct drm_device *dev = state->dev;

 drm_atomic_helper_commit_modeset_disables(dev, state);
 drm_atomic_helper_commit_modeset_enables(dev, state);
 drm_atomic_helper_commit_planes(dev, state, 0);

 drm_atomic_helper_commit_hw_done(state);

 drm_atomic_helper_wait_for_vblanks(dev, state);
 drm_atomic_helper_cleanup_planes(dev, state);
}
