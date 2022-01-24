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
struct device {int dummy; } ;
struct mipi_dsi_device {int /*<<< orphan*/  mode_flags; struct device dev; } ;
struct jdi_panel {struct mipi_dsi_device* dsi; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPI_DSI_MODE_LPM ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (struct mipi_dsi_device*) ; 
 int FUNC2 (struct mipi_dsi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct jdi_panel *jdi)
{
	struct mipi_dsi_device *dsi = jdi->dsi;
	struct device *dev = &jdi->dsi->dev;
	int ret;

	dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;

	ret = FUNC2(dsi);
	if (ret < 0)
		FUNC0(dev, "failed to set display off: %d\n", ret);

	ret = FUNC1(dsi);
	if (ret < 0)
		FUNC0(dev, "failed to enter sleep mode: %d\n", ret);

	FUNC3(100);
}