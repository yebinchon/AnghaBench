
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {int crtc; int state; } ;
struct drm_plane {int dummy; } ;
struct drm_crtc_state {int dummy; } ;


 int FRAC_16_16 (int,int) ;
 scalar_t__ IS_ERR (struct drm_crtc_state*) ;
 int PTR_ERR (struct drm_crtc_state*) ;
 struct drm_crtc_state* drm_atomic_get_crtc_state (int ,int ) ;
 int drm_atomic_helper_check_plane_state (struct drm_plane_state*,struct drm_crtc_state*,int ,int ,int,int) ;

__attribute__((used)) static int meson_overlay_atomic_check(struct drm_plane *plane,
          struct drm_plane_state *state)
{
 struct drm_crtc_state *crtc_state;

 if (!state->crtc)
  return 0;

 crtc_state = drm_atomic_get_crtc_state(state->state, state->crtc);
 if (IS_ERR(crtc_state))
  return PTR_ERR(crtc_state);

 return drm_atomic_helper_check_plane_state(state, crtc_state,
         FRAC_16_16(1, 5),
         FRAC_16_16(5, 1),
         1, 1);
}
