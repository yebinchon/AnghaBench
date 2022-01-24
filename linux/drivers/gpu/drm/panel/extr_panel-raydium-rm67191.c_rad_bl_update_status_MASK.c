#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rad_panel {int /*<<< orphan*/  prepared; } ;
struct mipi_dsi_device {int /*<<< orphan*/  mode_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  brightness; } ;
struct backlight_device {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPI_DSI_MODE_LPM ; 
 struct mipi_dsi_device* FUNC0 (struct backlight_device*) ; 
 int FUNC1 (struct mipi_dsi_device*,int /*<<< orphan*/ ) ; 
 struct rad_panel* FUNC2 (struct mipi_dsi_device*) ; 

__attribute__((used)) static int FUNC3(struct backlight_device *bl)
{
	struct mipi_dsi_device *dsi = FUNC0(bl);
	struct rad_panel *rad = FUNC2(dsi);
	int ret = 0;

	if (!rad->prepared)
		return 0;

	dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;

	ret = FUNC1(dsi, bl->props.brightness);
	if (ret < 0)
		return ret;

	return 0;
}