
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_mode_set {struct drm_crtc* crtc; } ;
struct drm_crtc {int dev; } ;
struct drm_atomic_state {struct drm_modeset_acquire_ctx* acquire_ctx; } ;


 int ENOMEM ;
 int __drm_atomic_helper_set_config (struct drm_mode_set*,struct drm_atomic_state*) ;
 int drm_atomic_commit (struct drm_atomic_state*) ;
 struct drm_atomic_state* drm_atomic_state_alloc (int ) ;
 int drm_atomic_state_put (struct drm_atomic_state*) ;
 int handle_conflicting_encoders (struct drm_atomic_state*,int) ;

int drm_atomic_helper_set_config(struct drm_mode_set *set,
     struct drm_modeset_acquire_ctx *ctx)
{
 struct drm_atomic_state *state;
 struct drm_crtc *crtc = set->crtc;
 int ret = 0;

 state = drm_atomic_state_alloc(crtc->dev);
 if (!state)
  return -ENOMEM;

 state->acquire_ctx = ctx;
 ret = __drm_atomic_helper_set_config(set, state);
 if (ret != 0)
  goto fail;

 ret = handle_conflicting_encoders(state, 1);
 if (ret)
  return ret;

 ret = drm_atomic_commit(state);

fail:
 drm_atomic_state_put(state);
 return ret;
}
