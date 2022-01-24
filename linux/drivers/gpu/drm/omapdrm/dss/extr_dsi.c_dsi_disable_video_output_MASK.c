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
struct omap_dss_device {int dummy; } ;
struct dsi_data {scalar_t__ mode; int /*<<< orphan*/  output; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ OMAP_DSS_DSI_VIDEO_MODE ; 
 int /*<<< orphan*/  FUNC1 (struct dsi_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct dsi_data*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dsi_data*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct dsi_data* FUNC6 (struct omap_dss_device*) ; 

__attribute__((used)) static void FUNC7(struct omap_dss_device *dssdev, int channel)
{
	struct dsi_data *dsi = FUNC6(dssdev);

	if (dsi->mode == OMAP_DSS_DSI_VIDEO_MODE) {
		FUNC3(dsi, false);
		FUNC4(dsi, channel, false);

		/* MODE, 0 = command mode */
		FUNC1(dsi, FUNC0(channel), 0, 4, 4);

		FUNC4(dsi, channel, true);
		FUNC3(dsi, true);
	}

	FUNC5(&dsi->output);

	FUNC2(dsi);
}