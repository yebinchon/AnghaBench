#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/ * funcs; struct device* dev; } ;
struct otm8009a {TYPE_6__* bl_dev; TYPE_3__ panel; struct device* dev; TYPE_6__* supply; TYPE_6__* reset_gpio; } ;
struct device {int dummy; } ;
struct mipi_dsi_device {int lanes; int mode_flags; TYPE_1__* host; int /*<<< orphan*/  format; struct device dev; } ;
struct TYPE_13__ {int /*<<< orphan*/  type; int /*<<< orphan*/  power; int /*<<< orphan*/  brightness; int /*<<< orphan*/  max_brightness; } ;
struct TYPE_15__ {TYPE_2__ props; } ;
struct TYPE_12__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_RAW ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FB_BLANK_POWERDOWN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  MIPI_DSI_FMT_RGB888 ; 
 int MIPI_DSI_MODE_LPM ; 
 int MIPI_DSI_MODE_VIDEO ; 
 int MIPI_DSI_MODE_VIDEO_BURST ; 
 int /*<<< orphan*/  OTM8009A_BACKLIGHT_DEFAULT ; 
 int /*<<< orphan*/  OTM8009A_BACKLIGHT_MAX ; 
 int FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 TYPE_6__* FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct otm8009a*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC6 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct otm8009a* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC8 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int FUNC12 (struct mipi_dsi_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct mipi_dsi_device*,struct otm8009a*) ; 
 int /*<<< orphan*/  otm8009a_backlight_ops ; 
 int /*<<< orphan*/  otm8009a_drm_funcs ; 

__attribute__((used)) static int FUNC14(struct mipi_dsi_device *dsi)
{
	struct device *dev = &dsi->dev;
	struct otm8009a *ctx;
	int ret;

	ctx = FUNC7(dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	ctx->reset_gpio = FUNC6(dev, "reset", GPIOD_OUT_LOW);
	if (FUNC0(ctx->reset_gpio)) {
		FUNC3(dev, "cannot get reset-gpio\n");
		return FUNC1(ctx->reset_gpio);
	}

	ctx->supply = FUNC8(dev, "power");
	if (FUNC0(ctx->supply)) {
		ret = FUNC1(ctx->supply);
		if (ret != -EPROBE_DEFER)
			FUNC3(dev, "failed to request regulator: %d\n", ret);
		return ret;
	}

	FUNC13(dsi, ctx);

	ctx->dev = dev;

	dsi->lanes = 2;
	dsi->format = MIPI_DSI_FMT_RGB888;
	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
			  MIPI_DSI_MODE_LPM;

	FUNC10(&ctx->panel);
	ctx->panel.dev = dev;
	ctx->panel.funcs = &otm8009a_drm_funcs;

	ctx->bl_dev = FUNC5(dev, FUNC4(dev),
						     dsi->host->dev, ctx,
						     &otm8009a_backlight_ops,
						     NULL);
	if (FUNC0(ctx->bl_dev)) {
		ret = FUNC1(ctx->bl_dev);
		FUNC3(dev, "failed to register backlight: %d\n", ret);
		return ret;
	}

	ctx->bl_dev->props.max_brightness = OTM8009A_BACKLIGHT_MAX;
	ctx->bl_dev->props.brightness = OTM8009A_BACKLIGHT_DEFAULT;
	ctx->bl_dev->props.power = FB_BLANK_POWERDOWN;
	ctx->bl_dev->props.type = BACKLIGHT_RAW;

	FUNC9(&ctx->panel);

	ret = FUNC12(dsi);
	if (ret < 0) {
		FUNC3(dev, "mipi_dsi_attach failed. Is host ready?\n");
		FUNC11(&ctx->panel);
		FUNC2(ctx->bl_dev);
		return ret;
	}

	return 0;
}