
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dc_state {unsigned long pclk; unsigned int div; struct clk* clk; } ;
struct tegra_dc {int clk; } ;
struct drm_crtc_state {int dummy; } ;
struct clk {int dummy; } ;


 int EINVAL ;
 int clk_has_parent (int ,struct clk*) ;
 struct tegra_dc_state* to_dc_state (struct drm_crtc_state*) ;

int tegra_dc_state_setup_clock(struct tegra_dc *dc,
          struct drm_crtc_state *crtc_state,
          struct clk *clk, unsigned long pclk,
          unsigned int div)
{
 struct tegra_dc_state *state = to_dc_state(crtc_state);

 if (!clk_has_parent(dc->clk, clk))
  return -EINVAL;

 state->clk = clk;
 state->pclk = pclk;
 state->div = div;

 return 0;
}
