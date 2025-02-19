
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_crtc_state {int connectors_changed; } ;
struct drm_crtc {int dev; } ;
struct drm_atomic_state {struct drm_modeset_acquire_ctx* acquire_ctx; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct drm_crtc_state*) ;
 int PTR_ERR (struct drm_crtc_state*) ;
 int drm_atomic_commit (struct drm_atomic_state*) ;
 struct drm_crtc_state* drm_atomic_get_crtc_state (struct drm_atomic_state*,struct drm_crtc*) ;
 struct drm_atomic_state* drm_atomic_state_alloc (int ) ;
 int drm_atomic_state_put (struct drm_atomic_state*) ;

__attribute__((used)) static int modeset_pipe(struct drm_crtc *crtc,
   struct drm_modeset_acquire_ctx *ctx)
{
 struct drm_atomic_state *state;
 struct drm_crtc_state *crtc_state;
 int ret;

 state = drm_atomic_state_alloc(crtc->dev);
 if (!state)
  return -ENOMEM;

 state->acquire_ctx = ctx;

 crtc_state = drm_atomic_get_crtc_state(state, crtc);
 if (IS_ERR(crtc_state)) {
  ret = PTR_ERR(crtc_state);
  goto out;
 }

 crtc_state->connectors_changed = 1;

 ret = drm_atomic_commit(state);
out:
 drm_atomic_state_put(state);

 return ret;
}
