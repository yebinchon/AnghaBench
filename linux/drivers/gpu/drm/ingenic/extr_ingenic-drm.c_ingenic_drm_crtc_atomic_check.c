
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ingenic_drm {int pix_clk; } ;
struct TYPE_2__ {int clock; } ;
struct drm_crtc_state {TYPE_1__ adjusted_mode; } ;
struct drm_crtc {int dummy; } ;


 long clk_round_rate (int ,int) ;
 int drm_atomic_crtc_needs_modeset (struct drm_crtc_state*) ;
 struct ingenic_drm* drm_crtc_get_priv (struct drm_crtc*) ;

__attribute__((used)) static int ingenic_drm_crtc_atomic_check(struct drm_crtc *crtc,
      struct drm_crtc_state *state)
{
 struct ingenic_drm *priv = drm_crtc_get_priv(crtc);
 long rate;

 if (!drm_atomic_crtc_needs_modeset(state))
  return 0;

 rate = clk_round_rate(priv->pix_clk,
         state->adjusted_mode.clock * 1000);
 if (rate < 0)
  return rate;

 return 0;
}
