
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int drm_atomic_helper_crtc_destroy_state (struct drm_crtc*,struct drm_crtc_state*) ;

void
vmw_du_crtc_destroy_state(struct drm_crtc *crtc,
     struct drm_crtc_state *state)
{
 drm_atomic_helper_crtc_destroy_state(crtc, state);
}
