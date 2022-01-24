#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tegra_dc_state {unsigned long pclk; unsigned int div; struct clk* clk; } ;
struct tegra_dc {int /*<<< orphan*/  clk; } ;
struct drm_crtc_state {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct clk*) ; 
 struct tegra_dc_state* FUNC1 (struct drm_crtc_state*) ; 

int FUNC2(struct tegra_dc *dc,
			       struct drm_crtc_state *crtc_state,
			       struct clk *clk, unsigned long pclk,
			       unsigned int div)
{
	struct tegra_dc_state *state = FUNC1(crtc_state);

	if (!FUNC0(dc->clk, clk))
		return -EINVAL;

	state->clk = clk;
	state->pclk = pclk;
	state->div = div;

	return 0;
}