
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_plane_state {TYPE_2__* state; TYPE_1__* crtc; } ;
struct drm_plane {int dev; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_atomic_state {struct drm_modeset_acquire_ctx* acquire_ctx; } ;
struct TYPE_4__ {int legacy_cursor_update; } ;
struct TYPE_3__ {struct drm_plane* cursor; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct drm_plane_state*) ;
 int PTR_ERR (struct drm_plane_state*) ;
 int __drm_atomic_helper_disable_plane (struct drm_plane*,struct drm_plane_state*) ;
 int drm_atomic_commit (struct drm_atomic_state*) ;
 struct drm_plane_state* drm_atomic_get_plane_state (struct drm_atomic_state*,struct drm_plane*) ;
 struct drm_atomic_state* drm_atomic_state_alloc (int ) ;
 int drm_atomic_state_put (struct drm_atomic_state*) ;

int drm_atomic_helper_disable_plane(struct drm_plane *plane,
        struct drm_modeset_acquire_ctx *ctx)
{
 struct drm_atomic_state *state;
 struct drm_plane_state *plane_state;
 int ret = 0;

 state = drm_atomic_state_alloc(plane->dev);
 if (!state)
  return -ENOMEM;

 state->acquire_ctx = ctx;
 plane_state = drm_atomic_get_plane_state(state, plane);
 if (IS_ERR(plane_state)) {
  ret = PTR_ERR(plane_state);
  goto fail;
 }

 if (plane_state->crtc && plane_state->crtc->cursor == plane)
  plane_state->state->legacy_cursor_update = 1;

 ret = __drm_atomic_helper_disable_plane(plane, plane_state);
 if (ret != 0)
  goto fail;

 ret = drm_atomic_commit(state);
fail:
 drm_atomic_state_put(state);
 return ret;
}
