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
struct exynos_dsi {int state; int /*<<< orphan*/  dev; scalar_t__ panel; int /*<<< orphan*/  out_bridge; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 int DSIM_STATE_ENABLED ; 
 int DSIM_STATE_VIDOUT_AVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct exynos_dsi* FUNC5 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC6 (struct exynos_dsi*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct exynos_dsi*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct drm_encoder *encoder)
{
	struct exynos_dsi *dsi = FUNC5(encoder);
	int ret;

	if (dsi->state & DSIM_STATE_ENABLED)
		return;

	FUNC8(dsi->dev);
	dsi->state |= DSIM_STATE_ENABLED;

	if (dsi->panel) {
		ret = FUNC3(dsi->panel);
		if (ret < 0)
			goto err_put_sync;
	} else {
		FUNC1(dsi->out_bridge);
	}

	FUNC7(dsi);
	FUNC6(dsi, true);

	if (dsi->panel) {
		ret = FUNC2(dsi->panel);
		if (ret < 0)
			goto err_display_disable;
	} else {
		FUNC0(dsi->out_bridge);
	}

	dsi->state |= DSIM_STATE_VIDOUT_AVAILABLE;
	return;

err_display_disable:
	FUNC6(dsi, false);
	FUNC4(dsi->panel);

err_put_sync:
	dsi->state &= ~DSIM_STATE_ENABLED;
	FUNC9(dsi->dev);
}