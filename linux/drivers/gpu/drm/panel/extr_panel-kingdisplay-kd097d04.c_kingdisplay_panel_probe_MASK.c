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
struct mipi_dsi_device {int lanes; int mode_flags; int /*<<< orphan*/  dev; int /*<<< orphan*/  format; } ;
struct kingdisplay_panel {struct mipi_dsi_device* link; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MIPI_DSI_FMT_RGB888 ; 
 int MIPI_DSI_MODE_LPM ; 
 int MIPI_DSI_MODE_VIDEO ; 
 int MIPI_DSI_MODE_VIDEO_BURST ; 
 struct kingdisplay_panel* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct kingdisplay_panel*) ; 
 int FUNC2 (struct mipi_dsi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct mipi_dsi_device*,struct kingdisplay_panel*) ; 

__attribute__((used)) static int FUNC4(struct mipi_dsi_device *dsi)
{
	struct kingdisplay_panel *kingdisplay;
	int err;

	dsi->lanes = 4;
	dsi->format = MIPI_DSI_FMT_RGB888;
	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
			  MIPI_DSI_MODE_LPM;

	kingdisplay = FUNC0(&dsi->dev, sizeof(*kingdisplay), GFP_KERNEL);
	if (!kingdisplay)
		return -ENOMEM;

	FUNC3(dsi, kingdisplay);
	kingdisplay->link = dsi;

	err = FUNC1(kingdisplay);
	if (err < 0)
		return err;

	return FUNC2(dsi);
}