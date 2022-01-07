
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_plane {int index; } ;
struct tegra_dc_state {int planes; } ;
struct drm_plane_state {int crtc; int state; } ;
struct drm_crtc_state {int dummy; } ;


 int INT_MAX ;
 scalar_t__ IS_ERR (struct drm_crtc_state*) ;
 int PTR_ERR (struct drm_crtc_state*) ;
 int WIN_A_ACT_REQ ;
 struct drm_crtc_state* drm_atomic_get_crtc_state (int ,int ) ;
 int drm_atomic_helper_check_plane_state (struct drm_plane_state*,struct drm_crtc_state*,int ,int ,int,int) ;
 struct tegra_dc_state* to_dc_state (struct drm_crtc_state*) ;

int tegra_plane_state_add(struct tegra_plane *plane,
     struct drm_plane_state *state)
{
 struct drm_crtc_state *crtc_state;
 struct tegra_dc_state *tegra;
 int err;


 crtc_state = drm_atomic_get_crtc_state(state->state, state->crtc);
 if (IS_ERR(crtc_state))
  return PTR_ERR(crtc_state);


 err = drm_atomic_helper_check_plane_state(state, crtc_state,
        0, INT_MAX, 1, 1);
 if (err < 0)
  return err;

 tegra = to_dc_state(crtc_state);

 tegra->planes |= WIN_A_ACT_REQ << plane->index;

 return 0;
}
