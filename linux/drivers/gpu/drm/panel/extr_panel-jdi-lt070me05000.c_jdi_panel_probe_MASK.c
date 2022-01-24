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
struct jdi_panel {struct mipi_dsi_device* dsi; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MIPI_DSI_CLOCK_NON_CONTINUOUS ; 
 int /*<<< orphan*/  MIPI_DSI_FMT_RGB888 ; 
 int MIPI_DSI_MODE_VIDEO ; 
 int MIPI_DSI_MODE_VIDEO_HSE ; 
 struct jdi_panel* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct jdi_panel*) ; 
 int FUNC2 (struct mipi_dsi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct mipi_dsi_device*,struct jdi_panel*) ; 

__attribute__((used)) static int FUNC4(struct mipi_dsi_device *dsi)
{
	struct jdi_panel *jdi;
	int ret;

	dsi->lanes = 4;
	dsi->format = MIPI_DSI_FMT_RGB888;
	dsi->mode_flags =  MIPI_DSI_MODE_VIDEO_HSE | MIPI_DSI_MODE_VIDEO |
			   MIPI_DSI_CLOCK_NON_CONTINUOUS;

	jdi = FUNC0(&dsi->dev, sizeof(*jdi), GFP_KERNEL);
	if (!jdi)
		return -ENOMEM;

	FUNC3(dsi, jdi);

	jdi->dsi = dsi;

	ret = FUNC1(jdi);
	if (ret < 0)
		return ret;

	return FUNC2(dsi);
}