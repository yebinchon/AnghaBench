
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct drm_atomic_state {struct drm_device* dev; } ;


 int DRM_PLANE_COMMIT_ACTIVE_ONLY ;
 int drm_atomic_helper_cleanup_planes (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_commit_hw_done (struct drm_atomic_state*) ;
 int drm_atomic_helper_commit_modeset_disables (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_commit_modeset_enables (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_commit_planes (struct drm_device*,struct drm_atomic_state*,int ) ;
 int drm_atomic_helper_wait_for_flip_done (struct drm_device*,struct drm_atomic_state*) ;

__attribute__((used)) static void komeda_kms_commit_tail(struct drm_atomic_state *old_state)
{
 struct drm_device *dev = old_state->dev;

 drm_atomic_helper_commit_modeset_disables(dev, old_state);

 drm_atomic_helper_commit_planes(dev, old_state,
     DRM_PLANE_COMMIT_ACTIVE_ONLY);

 drm_atomic_helper_commit_modeset_enables(dev, old_state);

 drm_atomic_helper_wait_for_flip_done(dev, old_state);

 drm_atomic_helper_commit_hw_done(old_state);

 drm_atomic_helper_cleanup_planes(dev, old_state);
}
