#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/ * funcs; struct device* dev; } ;
struct s6e3ha2 {TYPE_6__* bl_dev; TYPE_2__ panel; TYPE_6__* enable_gpio; TYPE_6__* reset_gpio; TYPE_5__* supplies; int /*<<< orphan*/  desc; struct device* dev; } ;
struct device {int dummy; } ;
struct mipi_dsi_device {int lanes; int /*<<< orphan*/  mode_flags; int /*<<< orphan*/  format; struct device dev; } ;
struct TYPE_11__ {int /*<<< orphan*/  power; int /*<<< orphan*/  brightness; int /*<<< orphan*/  max_brightness; } ;
struct TYPE_14__ {TYPE_1__ props; } ;
struct TYPE_13__ {char* supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FB_BLANK_POWERDOWN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  MIPI_DSI_CLOCK_NON_CONTINUOUS ; 
 int /*<<< orphan*/  MIPI_DSI_FMT_RGB888 ; 
 int FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  S6E3HA2_DEFAULT_BRIGHTNESS ; 
 int /*<<< orphan*/  S6E3HA2_MAX_BRIGHTNESS ; 
 TYPE_6__* FUNC3 (char*,struct device*,struct s6e3ha2*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 void* FUNC6 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct s6e3ha2* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int FUNC12 (struct mipi_dsi_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct mipi_dsi_device*,struct s6e3ha2*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  s6e3ha2_bl_ops ; 
 int /*<<< orphan*/  s6e3ha2_drm_funcs ; 

__attribute__((used)) static int FUNC15(struct mipi_dsi_device *dsi)
{
	struct device *dev = &dsi->dev;
	struct s6e3ha2 *ctx;
	int ret;

	ctx = FUNC7(dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	FUNC13(dsi, ctx);

	ctx->dev = dev;
	ctx->desc = FUNC14(dev);

	dsi->lanes = 4;
	dsi->format = MIPI_DSI_FMT_RGB888;
	dsi->mode_flags = MIPI_DSI_CLOCK_NON_CONTINUOUS;

	ctx->supplies[0].supply = "vdd3";
	ctx->supplies[1].supply = "vci";

	ret = FUNC8(dev, FUNC0(ctx->supplies),
				      ctx->supplies);
	if (ret < 0) {
		FUNC5(dev, "failed to get regulators: %d\n", ret);
		return ret;
	}

	ctx->reset_gpio = FUNC6(dev, "reset", GPIOD_OUT_LOW);
	if (FUNC1(ctx->reset_gpio)) {
		FUNC5(dev, "cannot get reset-gpios %ld\n",
			FUNC2(ctx->reset_gpio));
		return FUNC2(ctx->reset_gpio);
	}

	ctx->enable_gpio = FUNC6(dev, "enable", GPIOD_OUT_HIGH);
	if (FUNC1(ctx->enable_gpio)) {
		FUNC5(dev, "cannot get enable-gpios %ld\n",
			FUNC2(ctx->enable_gpio));
		return FUNC2(ctx->enable_gpio);
	}

	ctx->bl_dev = FUNC3("s6e3ha2", dev, ctx,
						&s6e3ha2_bl_ops, NULL);
	if (FUNC1(ctx->bl_dev)) {
		FUNC5(dev, "failed to register backlight device\n");
		return FUNC2(ctx->bl_dev);
	}

	ctx->bl_dev->props.max_brightness = S6E3HA2_MAX_BRIGHTNESS;
	ctx->bl_dev->props.brightness = S6E3HA2_DEFAULT_BRIGHTNESS;
	ctx->bl_dev->props.power = FB_BLANK_POWERDOWN;

	FUNC10(&ctx->panel);
	ctx->panel.dev = dev;
	ctx->panel.funcs = &s6e3ha2_drm_funcs;

	ret = FUNC9(&ctx->panel);
	if (ret < 0)
		goto unregister_backlight;

	ret = FUNC12(dsi);
	if (ret < 0)
		goto remove_panel;

	return ret;

remove_panel:
	FUNC11(&ctx->panel);

unregister_backlight:
	FUNC4(ctx->bl_dev);

	return ret;
}