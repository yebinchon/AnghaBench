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
typedef  int u32 ;
struct TYPE_4__ {struct device* dev; int /*<<< orphan*/ * funcs; } ;
struct rad_panel {TYPE_1__ panel; int /*<<< orphan*/  backlight; int /*<<< orphan*/  reset; struct mipi_dsi_device* dsi; } ;
struct device {struct device_node* of_node; } ;
struct mipi_dsi_device {int mode_flags; int lanes; int /*<<< orphan*/  format; struct device dev; } ;
struct device_node {int dummy; } ;
struct backlight_properties {int brightness; int max_brightness; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  bl_props ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_RAW ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MIPI_DSI_CLOCK_NON_CONTINUOUS ; 
 int /*<<< orphan*/  MIPI_DSI_FMT_RGB888 ; 
 int MIPI_DSI_MODE_VIDEO ; 
 int MIPI_DSI_MODE_VIDEO_BURST ; 
 int MIPI_DSI_MODE_VIDEO_HSE ; 
 int MIPI_DSI_MODE_VIDEO_SYNC_PULSE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct rad_panel*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ ,struct device*,struct mipi_dsi_device*,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct rad_panel* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (struct mipi_dsi_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct mipi_dsi_device*,struct rad_panel*) ; 
 int FUNC15 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  rad_bl_ops ; 
 int FUNC16 (struct rad_panel*) ; 
 int /*<<< orphan*/  rad_panel_funcs ; 

__attribute__((used)) static int FUNC17(struct mipi_dsi_device *dsi)
{
	struct device *dev = &dsi->dev;
	struct device_node *np = dev->of_node;
	struct rad_panel *panel;
	struct backlight_properties bl_props;
	int ret;
	u32 video_mode;

	panel = FUNC8(&dsi->dev, sizeof(*panel), GFP_KERNEL);
	if (!panel)
		return -ENOMEM;

	FUNC14(dsi, panel);

	panel->dsi = dsi;

	dsi->format = MIPI_DSI_FMT_RGB888;
	dsi->mode_flags =  MIPI_DSI_MODE_VIDEO_HSE | MIPI_DSI_MODE_VIDEO |
			   MIPI_DSI_CLOCK_NON_CONTINUOUS;

	ret = FUNC15(np, "video-mode", &video_mode);
	if (!ret) {
		switch (video_mode) {
		case 0:
			/* burst mode */
			dsi->mode_flags |= MIPI_DSI_MODE_VIDEO_BURST;
			break;
		case 1:
			/* non-burst mode with sync event */
			break;
		case 2:
			/* non-burst mode with sync pulse */
			dsi->mode_flags |= MIPI_DSI_MODE_VIDEO_SYNC_PULSE;
			break;
		default:
			FUNC5(dev, "invalid video mode %d\n", video_mode);
			break;
		}
	}

	ret = FUNC15(np, "dsi-lanes", &dsi->lanes);
	if (ret) {
		FUNC2(dev, "Failed to get dsi-lanes property (%d)\n", ret);
		return ret;
	}

	panel->reset = FUNC7(dev, "reset", GPIOD_OUT_LOW);
	if (FUNC0(panel->reset))
		return FUNC1(panel->reset);

	FUNC12(&bl_props, 0, sizeof(bl_props));
	bl_props.type = BACKLIGHT_RAW;
	bl_props.brightness = 255;
	bl_props.max_brightness = 255;

	panel->backlight = FUNC6(dev, FUNC3(dev),
							  dev, dsi, &rad_bl_ops,
							  &bl_props);
	if (FUNC0(panel->backlight)) {
		ret = FUNC1(panel->backlight);
		FUNC2(dev, "Failed to register backlight (%d)\n", ret);
		return ret;
	}

	ret = FUNC16(panel);
	if (ret)
		return ret;

	FUNC10(&panel->panel);
	panel->panel.funcs = &rad_panel_funcs;
	panel->panel.dev = dev;
	FUNC4(dev, panel);

	ret = FUNC9(&panel->panel);
	if (ret)
		return ret;

	ret = FUNC13(dsi);
	if (ret)
		FUNC11(&panel->panel);

	return ret;
}