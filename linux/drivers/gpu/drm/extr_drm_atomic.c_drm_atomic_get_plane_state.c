
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_plane_state {scalar_t__ crtc; struct drm_atomic_state* state; } ;
struct TYPE_6__ {int id; } ;
struct drm_plane {int fb; int old_fb; int crtc; int name; TYPE_3__ base; int state; TYPE_1__* funcs; int mutex; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_atomic_state {TYPE_2__* planes; int acquire_ctx; } ;
struct TYPE_5__ {struct drm_plane_state* new_state; int old_state; struct drm_plane* ptr; struct drm_plane_state* state; } ;
struct TYPE_4__ {struct drm_plane_state* (* atomic_duplicate_state ) (struct drm_plane*) ;} ;


 int DRM_DEBUG_ATOMIC (char*,int ,int ,struct drm_plane_state*,struct drm_atomic_state*) ;
 int ENOMEM ;
 struct drm_plane_state* ERR_CAST (struct drm_crtc_state*) ;
 struct drm_plane_state* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct drm_crtc_state*) ;
 int WARN_ON (int) ;
 struct drm_crtc_state* drm_atomic_get_crtc_state (struct drm_atomic_state*,scalar_t__) ;
 struct drm_plane_state* drm_atomic_get_existing_plane_state (struct drm_atomic_state*,struct drm_plane*) ;
 int drm_modeset_lock (int *,int ) ;
 int drm_plane_index (struct drm_plane*) ;
 struct drm_plane_state* stub1 (struct drm_plane*) ;

struct drm_plane_state *
drm_atomic_get_plane_state(struct drm_atomic_state *state,
     struct drm_plane *plane)
{
 int ret, index = drm_plane_index(plane);
 struct drm_plane_state *plane_state;

 WARN_ON(!state->acquire_ctx);


 WARN_ON(plane->fb);
 WARN_ON(plane->old_fb);
 WARN_ON(plane->crtc);

 plane_state = drm_atomic_get_existing_plane_state(state, plane);
 if (plane_state)
  return plane_state;

 ret = drm_modeset_lock(&plane->mutex, state->acquire_ctx);
 if (ret)
  return ERR_PTR(ret);

 plane_state = plane->funcs->atomic_duplicate_state(plane);
 if (!plane_state)
  return ERR_PTR(-ENOMEM);

 state->planes[index].state = plane_state;
 state->planes[index].ptr = plane;
 state->planes[index].old_state = plane->state;
 state->planes[index].new_state = plane_state;
 plane_state->state = state;

 DRM_DEBUG_ATOMIC("Added [PLANE:%d:%s] %p state to %p\n",
    plane->base.id, plane->name, plane_state, state);

 if (plane_state->crtc) {
  struct drm_crtc_state *crtc_state;

  crtc_state = drm_atomic_get_crtc_state(state,
             plane_state->crtc);
  if (IS_ERR(crtc_state))
   return ERR_CAST(crtc_state);
 }

 return plane_state;
}
