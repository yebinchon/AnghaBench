
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {int dummy; } ;
struct tegra_dc_state {struct drm_crtc_state base; int planes; int div; int pclk; int clk; } ;
struct drm_crtc {int state; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_crtc_duplicate_state (struct drm_crtc*,struct drm_crtc_state*) ;
 struct tegra_dc_state* kmalloc (int,int ) ;
 struct tegra_dc_state* to_dc_state (int ) ;

__attribute__((used)) static struct drm_crtc_state *
tegra_crtc_atomic_duplicate_state(struct drm_crtc *crtc)
{
 struct tegra_dc_state *state = to_dc_state(crtc->state);
 struct tegra_dc_state *copy;

 copy = kmalloc(sizeof(*copy), GFP_KERNEL);
 if (!copy)
  return ((void*)0);

 __drm_atomic_helper_crtc_duplicate_state(crtc, &copy->base);
 copy->clk = state->clk;
 copy->pclk = state->pclk;
 copy->div = state->div;
 copy->planes = state->planes;

 return &copy->base;
}
