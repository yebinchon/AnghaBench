
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_crtc_state {int dummy; } ;
struct TYPE_3__ {int base; } ;
struct TYPE_4__ {TYPE_1__ mutex; } ;
struct drm_crtc {struct drm_crtc_state* state; TYPE_2__ mutex; } ;
struct drm_atomic_state {int acquire_ctx; } ;


 int EALREADY ;
 struct drm_crtc_state* ERR_PTR (int) ;
 struct drm_crtc_state* drm_atomic_get_new_crtc_state (struct drm_atomic_state*,struct drm_crtc*) ;
 int drm_modeset_lock (TYPE_2__*,int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static struct drm_crtc_state *
vmw_crtc_state_and_lock(struct drm_atomic_state *state, struct drm_crtc *crtc)
{
 struct drm_crtc_state *crtc_state;

 crtc_state = drm_atomic_get_new_crtc_state(state, crtc);
 if (crtc_state) {
  lockdep_assert_held(&crtc->mutex.mutex.base);
 } else {
  int ret = drm_modeset_lock(&crtc->mutex, state->acquire_ctx);

  if (ret != 0 && ret != -EALREADY)
   return ERR_PTR(ret);

  crtc_state = crtc->state;
 }

 return crtc_state;
}
