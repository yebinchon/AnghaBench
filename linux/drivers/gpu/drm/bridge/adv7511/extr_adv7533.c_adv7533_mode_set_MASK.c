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
struct mipi_dsi_device {int lanes; int /*<<< orphan*/  dev; } ;
struct drm_display_mode {int clock; } ;
struct adv7511 {int num_dsi_lanes; struct mipi_dsi_device* dsi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct mipi_dsi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mipi_dsi_device*) ; 

void FUNC3(struct adv7511 *adv, const struct drm_display_mode *mode)
{
	struct mipi_dsi_device *dsi = adv->dsi;
	int lanes, ret;

	if (adv->num_dsi_lanes != 4)
		return;

	if (mode->clock > 80000)
		lanes = 4;
	else
		lanes = 3;

	if (lanes != dsi->lanes) {
		FUNC2(dsi);
		dsi->lanes = lanes;
		ret = FUNC1(dsi);
		if (ret)
			FUNC0(&dsi->dev, "failed to change host lanes\n");
	}
}