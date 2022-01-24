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
struct drm_crtc_state {int dummy; } ;
struct tegra_dc_state {struct drm_crtc_state base; int /*<<< orphan*/  planes; int /*<<< orphan*/  div; int /*<<< orphan*/  pclk; int /*<<< orphan*/  clk; } ;
struct drm_crtc {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*,struct drm_crtc_state*) ; 
 struct tegra_dc_state* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct tegra_dc_state* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_crtc_state *
FUNC3(struct drm_crtc *crtc)
{
	struct tegra_dc_state *state = FUNC2(crtc->state);
	struct tegra_dc_state *copy;

	copy = FUNC1(sizeof(*copy), GFP_KERNEL);
	if (!copy)
		return NULL;

	FUNC0(crtc, &copy->base);
	copy->clk = state->clk;
	copy->pclk = state->pclk;
	copy->div = state->div;
	copy->planes = state->planes;

	return &copy->base;
}