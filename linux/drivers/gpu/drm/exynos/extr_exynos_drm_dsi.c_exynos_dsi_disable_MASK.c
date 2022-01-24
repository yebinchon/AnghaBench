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
struct exynos_dsi {int state; int /*<<< orphan*/  dev; int /*<<< orphan*/  out_bridge; int /*<<< orphan*/  panel; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 int DSIM_STATE_ENABLED ; 
 int DSIM_STATE_VIDOUT_AVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct exynos_dsi* FUNC4 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC5 (struct exynos_dsi*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct drm_encoder *encoder)
{
	struct exynos_dsi *dsi = FUNC4(encoder);

	if (!(dsi->state & DSIM_STATE_ENABLED))
		return;

	dsi->state &= ~DSIM_STATE_VIDOUT_AVAILABLE;

	FUNC2(dsi->panel);
	FUNC0(dsi->out_bridge);
	FUNC5(dsi, false);
	FUNC3(dsi->panel);
	FUNC1(dsi->out_bridge);
	dsi->state &= ~DSIM_STATE_ENABLED;
	FUNC6(dsi->dev);
}