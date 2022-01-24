#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * funcs; struct device* dev; } ;
struct s6d16d0 {TYPE_1__ panel; int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/  supply; struct device* dev; } ;
struct device {int dummy; } ;
struct mipi_dsi_device {int lanes; int hs_rate; int lp_rate; int mode_flags; int /*<<< orphan*/  format; struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int MIPI_DSI_CLOCK_NON_CONTINUOUS ; 
 int /*<<< orphan*/  MIPI_DSI_FMT_RGB888 ; 
 int MIPI_DSI_MODE_EOT_PACKET ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct s6d16d0* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (struct mipi_dsi_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct mipi_dsi_device*,struct s6d16d0*) ; 
 int /*<<< orphan*/  s6d16d0_drm_funcs ; 

__attribute__((used)) static int FUNC11(struct mipi_dsi_device *dsi)
{
	struct device *dev = &dsi->dev;
	struct s6d16d0 *s6;
	int ret;

	s6 = FUNC4(dev, sizeof(struct s6d16d0), GFP_KERNEL);
	if (!s6)
		return -ENOMEM;

	FUNC10(dsi, s6);
	s6->dev = dev;

	dsi->lanes = 2;
	dsi->format = MIPI_DSI_FMT_RGB888;
	dsi->hs_rate = 420160000;
	dsi->lp_rate = 19200000;
	/*
	 * This display uses command mode so no MIPI_DSI_MODE_VIDEO
	 * or MIPI_DSI_MODE_VIDEO_SYNC_PULSE
	 *
	 * As we only send commands we do not need to be continuously
	 * clocked.
	 */
	dsi->mode_flags =
		MIPI_DSI_CLOCK_NON_CONTINUOUS |
		MIPI_DSI_MODE_EOT_PACKET;

	s6->supply = FUNC5(dev, "vdd1");
	if (FUNC1(s6->supply))
		return FUNC2(s6->supply);

	/* This asserts RESET by default */
	s6->reset_gpio = FUNC3(dev, "reset",
						 GPIOD_OUT_HIGH);
	if (FUNC1(s6->reset_gpio)) {
		ret = FUNC2(s6->reset_gpio);
		if (ret != -EPROBE_DEFER)
			FUNC0(dev, "failed to request GPIO (%d)\n",
				      ret);
		return ret;
	}

	FUNC7(&s6->panel);
	s6->panel.dev = dev;
	s6->panel.funcs = &s6d16d0_drm_funcs;

	ret = FUNC6(&s6->panel);
	if (ret < 0)
		return ret;

	ret = FUNC9(dsi);
	if (ret < 0)
		FUNC8(&s6->panel);

	return ret;
}