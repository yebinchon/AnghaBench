
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_drm_private {struct drm_device* drm; } ;
struct drm_device {int dummy; } ;
struct drm_atomic_state {int dummy; } ;


 int DRM_PLANE_COMMIT_ACTIVE_ONLY ;
 int drm_atomic_helper_cleanup_planes (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_commit_modeset_disables (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_commit_modeset_enables (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_commit_planes (struct drm_device*,struct drm_atomic_state*,int ) ;
 int drm_atomic_helper_wait_for_fences (struct drm_device*,struct drm_atomic_state*,int) ;
 int drm_atomic_helper_wait_for_vblanks (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_state_put (struct drm_atomic_state*) ;

__attribute__((used)) static void mtk_atomic_complete(struct mtk_drm_private *private,
    struct drm_atomic_state *state)
{
 struct drm_device *drm = private->drm;

 drm_atomic_helper_wait_for_fences(drm, state, 0);
 drm_atomic_helper_commit_modeset_disables(drm, state);
 drm_atomic_helper_commit_modeset_enables(drm, state);
 drm_atomic_helper_commit_planes(drm, state,
     DRM_PLANE_COMMIT_ACTIVE_ONLY);

 drm_atomic_helper_wait_for_vblanks(drm, state);

 drm_atomic_helper_cleanup_planes(drm, state);
 drm_atomic_state_put(state);
}
