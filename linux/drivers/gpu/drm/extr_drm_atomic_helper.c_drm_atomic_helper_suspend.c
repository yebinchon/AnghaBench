
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_atomic_state {int dummy; } ;


 int DRM_MODESET_LOCK_ALL_BEGIN (struct drm_device*,struct drm_modeset_acquire_ctx,int ,int) ;
 int DRM_MODESET_LOCK_ALL_END (struct drm_modeset_acquire_ctx,int) ;
 int EINVAL ;
 struct drm_atomic_state* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct drm_atomic_state*) ;
 int drm_atomic_helper_disable_all (struct drm_device*,struct drm_modeset_acquire_ctx*) ;
 struct drm_atomic_state* drm_atomic_helper_duplicate_state (struct drm_device*,struct drm_modeset_acquire_ctx*) ;
 int drm_atomic_state_put (struct drm_atomic_state*) ;

struct drm_atomic_state *drm_atomic_helper_suspend(struct drm_device *dev)
{
 struct drm_modeset_acquire_ctx ctx;
 struct drm_atomic_state *state;
 int err;


 state = ERR_PTR(-EINVAL);

 DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0, err);

 state = drm_atomic_helper_duplicate_state(dev, &ctx);
 if (IS_ERR(state))
  goto unlock;

 err = drm_atomic_helper_disable_all(dev, &ctx);
 if (err < 0) {
  drm_atomic_state_put(state);
  state = ERR_PTR(err);
  goto unlock;
 }

unlock:
 DRM_MODESET_LOCK_ALL_END(ctx, err);
 if (err)
  return ERR_PTR(err);

 return state;
}
