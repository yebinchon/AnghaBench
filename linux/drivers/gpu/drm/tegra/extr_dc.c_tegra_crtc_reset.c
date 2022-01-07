
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dc_state {int base; } ;
struct drm_crtc {scalar_t__ state; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_crtc_reset (struct drm_crtc*,int *) ;
 int drm_crtc_vblank_reset (struct drm_crtc*) ;
 struct tegra_dc_state* kzalloc (int,int ) ;
 int tegra_crtc_atomic_destroy_state (struct drm_crtc*,scalar_t__) ;

__attribute__((used)) static void tegra_crtc_reset(struct drm_crtc *crtc)
{
 struct tegra_dc_state *state = kzalloc(sizeof(*state), GFP_KERNEL);

 if (crtc->state)
  tegra_crtc_atomic_destroy_state(crtc, crtc->state);

 __drm_atomic_helper_crtc_reset(crtc, &state->base);
 drm_crtc_vblank_reset(crtc);
}
