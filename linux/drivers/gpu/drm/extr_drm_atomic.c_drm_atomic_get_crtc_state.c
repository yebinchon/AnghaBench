
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_crtc_state {struct drm_atomic_state* state; } ;
struct TYPE_6__ {int id; } ;
struct drm_crtc {int name; TYPE_3__ base; int state; TYPE_1__* funcs; int mutex; } ;
struct drm_atomic_state {TYPE_2__* crtcs; int acquire_ctx; } ;
struct TYPE_5__ {struct drm_crtc* ptr; struct drm_crtc_state* new_state; int old_state; struct drm_crtc_state* state; } ;
struct TYPE_4__ {struct drm_crtc_state* (* atomic_duplicate_state ) (struct drm_crtc*) ;} ;


 int DRM_DEBUG_ATOMIC (char*,int ,int ,struct drm_crtc_state*,struct drm_atomic_state*) ;
 int ENOMEM ;
 struct drm_crtc_state* ERR_PTR (int) ;
 int WARN_ON (int) ;
 struct drm_crtc_state* drm_atomic_get_existing_crtc_state (struct drm_atomic_state*,struct drm_crtc*) ;
 int drm_crtc_index (struct drm_crtc*) ;
 int drm_modeset_lock (int *,int ) ;
 struct drm_crtc_state* stub1 (struct drm_crtc*) ;

struct drm_crtc_state *
drm_atomic_get_crtc_state(struct drm_atomic_state *state,
     struct drm_crtc *crtc)
{
 int ret, index = drm_crtc_index(crtc);
 struct drm_crtc_state *crtc_state;

 WARN_ON(!state->acquire_ctx);

 crtc_state = drm_atomic_get_existing_crtc_state(state, crtc);
 if (crtc_state)
  return crtc_state;

 ret = drm_modeset_lock(&crtc->mutex, state->acquire_ctx);
 if (ret)
  return ERR_PTR(ret);

 crtc_state = crtc->funcs->atomic_duplicate_state(crtc);
 if (!crtc_state)
  return ERR_PTR(-ENOMEM);

 state->crtcs[index].state = crtc_state;
 state->crtcs[index].old_state = crtc->state;
 state->crtcs[index].new_state = crtc_state;
 state->crtcs[index].ptr = crtc;
 crtc_state->state = state;

 DRM_DEBUG_ATOMIC("Added [CRTC:%d:%s] %p state to %p\n",
    crtc->base.id, crtc->name, crtc_state, state);

 return crtc_state;
}
