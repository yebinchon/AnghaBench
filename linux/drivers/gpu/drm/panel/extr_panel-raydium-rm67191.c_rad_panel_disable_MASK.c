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
struct rad_panel {int enabled; int /*<<< orphan*/  backlight; struct mipi_dsi_device* dsi; } ;
struct device {int dummy; } ;
struct mipi_dsi_device {int /*<<< orphan*/  mode_flags; struct device dev; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  MIPI_DSI_MODE_LPM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mipi_dsi_device*) ; 
 int FUNC3 (struct mipi_dsi_device*) ; 
 struct rad_panel* FUNC4 (struct drm_panel*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct drm_panel *panel)
{
	struct rad_panel *rad = FUNC4(panel);
	struct mipi_dsi_device *dsi = rad->dsi;
	struct device *dev = &dsi->dev;
	int ret;

	if (!rad->enabled)
		return 0;

	dsi->mode_flags |= MIPI_DSI_MODE_LPM;

	FUNC1(rad->backlight);

	FUNC5(10000, 12000);

	ret = FUNC3(dsi);
	if (ret < 0) {
		FUNC0(dev, "Failed to set display OFF (%d)\n", ret);
		return ret;
	}

	FUNC5(5000, 10000);

	ret = FUNC2(dsi);
	if (ret < 0) {
		FUNC0(dev, "Failed to enter sleep mode (%d)\n", ret);
		return ret;
	}

	rad->enabled = false;

	return 0;
}