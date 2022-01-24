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
struct mipi_dsi_device {int mode_flags; int lanes; int /*<<< orphan*/  dev; int /*<<< orphan*/  format; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPI_DSI_FMT_RGB888 ; 
 int MIPI_DSI_MODE_LPM ; 
 int MIPI_DSI_MODE_VIDEO ; 
 int MIPI_DSI_MODE_VIDEO_SYNC_PULSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct mipi_dsi_device*) ; 

__attribute__((used)) static int FUNC2(struct mipi_dsi_device *dsi)
{
	int ret;

	dsi->mode_flags = (MIPI_DSI_MODE_VIDEO |
			   MIPI_DSI_MODE_VIDEO_SYNC_PULSE |
			   MIPI_DSI_MODE_LPM);
	dsi->format = MIPI_DSI_FMT_RGB888;
	dsi->lanes = 1;

	ret = FUNC1(dsi);

	if (ret)
		FUNC0(&dsi->dev, "failed to attach dsi to host: %d\n", ret);

	return ret;
}