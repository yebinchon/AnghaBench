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
struct rm68200 {TYPE_1__ panel; struct device* dev; int /*<<< orphan*/  backlight; int /*<<< orphan*/  supply; int /*<<< orphan*/  reset_gpio; } ;
struct device {int dummy; } ;
struct mipi_dsi_device {int lanes; int mode_flags; int /*<<< orphan*/  format; struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIPI_DSI_FMT_RGB888 ; 
 int MIPI_DSI_MODE_LPM ; 
 int MIPI_DSI_MODE_VIDEO ; 
 int MIPI_DSI_MODE_VIDEO_BURST ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct rm68200* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int FUNC10 (struct mipi_dsi_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct mipi_dsi_device*,struct rm68200*) ; 
 int /*<<< orphan*/  rm68200_drm_funcs ; 

__attribute__((used)) static int FUNC12(struct mipi_dsi_device *dsi)
{
	struct device *dev = &dsi->dev;
	struct rm68200 *ctx;
	int ret;

	ctx = FUNC4(dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	ctx->reset_gpio = FUNC3(dev, "reset", GPIOD_OUT_LOW);
	if (FUNC0(ctx->reset_gpio)) {
		ret = FUNC1(ctx->reset_gpio);
		FUNC2(dev, "cannot get reset GPIO: %d\n", ret);
		return ret;
	}

	ctx->supply = FUNC6(dev, "power");
	if (FUNC0(ctx->supply)) {
		ret = FUNC1(ctx->supply);
		if (ret != -EPROBE_DEFER)
			FUNC2(dev, "cannot get regulator: %d\n", ret);
		return ret;
	}

	ctx->backlight = FUNC5(dev);
	if (FUNC0(ctx->backlight))
		return FUNC1(ctx->backlight);

	FUNC11(dsi, ctx);

	ctx->dev = dev;

	dsi->lanes = 2;
	dsi->format = MIPI_DSI_FMT_RGB888;
	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
			  MIPI_DSI_MODE_LPM;

	FUNC8(&ctx->panel);
	ctx->panel.dev = dev;
	ctx->panel.funcs = &rm68200_drm_funcs;

	FUNC7(&ctx->panel);

	ret = FUNC10(dsi);
	if (ret < 0) {
		FUNC2(dev, "mipi_dsi_attach() failed: %d\n", ret);
		FUNC9(&ctx->panel);
		return ret;
	}

	return 0;
}