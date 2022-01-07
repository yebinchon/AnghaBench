
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_atomic_state {int dummy; } ;


 int DRM_MODESET_LOCK_ALL_BEGIN (struct drm_device*,struct drm_modeset_acquire_ctx,int ,int) ;
 int DRM_MODESET_LOCK_ALL_END (struct drm_modeset_acquire_ctx,int) ;
 int drm_atomic_helper_commit_duplicated_state (struct drm_atomic_state*,struct drm_modeset_acquire_ctx*) ;
 int drm_atomic_state_put (struct drm_atomic_state*) ;
 int drm_mode_config_reset (struct drm_device*) ;

int drm_atomic_helper_resume(struct drm_device *dev,
        struct drm_atomic_state *state)
{
 struct drm_modeset_acquire_ctx ctx;
 int err;

 drm_mode_config_reset(dev);

 DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0, err);

 err = drm_atomic_helper_commit_duplicated_state(state, &ctx);

 DRM_MODESET_LOCK_ALL_END(ctx, err);
 drm_atomic_state_put(state);

 return err;
}
