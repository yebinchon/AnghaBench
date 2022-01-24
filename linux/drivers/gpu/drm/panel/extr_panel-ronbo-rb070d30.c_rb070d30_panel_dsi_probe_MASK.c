#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * funcs; int /*<<< orphan*/ * dev; } ;
struct TYPE_4__ {void* shlr; void* updn; void* power; void* reset; } ;
struct rb070d30_panel {TYPE_2__ panel; void* backlight; TYPE_1__ gpios; struct mipi_dsi_device* dsi; void* supply; } ;
struct mipi_dsi_device {int mode_flags; int lanes; int /*<<< orphan*/  format; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  MIPI_DSI_FMT_RGB888 ; 
 int MIPI_DSI_MODE_LPM ; 
 int MIPI_DSI_MODE_VIDEO ; 
 int MIPI_DSI_MODE_VIDEO_BURST ; 
 int FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct rb070d30_panel* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int FUNC9 (struct mipi_dsi_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct mipi_dsi_device*,struct rb070d30_panel*) ; 
 int /*<<< orphan*/  rb070d30_panel_funcs ; 

__attribute__((used)) static int FUNC11(struct mipi_dsi_device *dsi)
{
	struct rb070d30_panel *ctx;
	int ret;

	ctx = FUNC4(&dsi->dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	ctx->supply = FUNC6(&dsi->dev, "vcc-lcd");
	if (FUNC1(ctx->supply))
		return FUNC2(ctx->supply);

	FUNC10(dsi, ctx);
	ctx->dsi = dsi;

	FUNC8(&ctx->panel);
	ctx->panel.dev = &dsi->dev;
	ctx->panel.funcs = &rb070d30_panel_funcs;

	ctx->gpios.reset = FUNC3(&dsi->dev, "reset", GPIOD_OUT_LOW);
	if (FUNC1(ctx->gpios.reset)) {
		FUNC0(&dsi->dev, "Couldn't get our reset GPIO\n");
		return FUNC2(ctx->gpios.reset);
	}

	ctx->gpios.power = FUNC3(&dsi->dev, "power", GPIOD_OUT_LOW);
	if (FUNC1(ctx->gpios.power)) {
		FUNC0(&dsi->dev, "Couldn't get our power GPIO\n");
		return FUNC2(ctx->gpios.power);
	}

	/*
	 * We don't change the state of that GPIO later on but we need
	 * to force it into a low state.
	 */
	ctx->gpios.updn = FUNC3(&dsi->dev, "updn", GPIOD_OUT_LOW);
	if (FUNC1(ctx->gpios.updn)) {
		FUNC0(&dsi->dev, "Couldn't get our updn GPIO\n");
		return FUNC2(ctx->gpios.updn);
	}

	/*
	 * We don't change the state of that GPIO later on but we need
	 * to force it into a low state.
	 */
	ctx->gpios.shlr = FUNC3(&dsi->dev, "shlr", GPIOD_OUT_LOW);
	if (FUNC1(ctx->gpios.shlr)) {
		FUNC0(&dsi->dev, "Couldn't get our shlr GPIO\n");
		return FUNC2(ctx->gpios.shlr);
	}

	ctx->backlight = FUNC5(&dsi->dev);
	if (FUNC1(ctx->backlight)) {
		FUNC0(&dsi->dev, "Couldn't get our backlight\n");
		return FUNC2(ctx->backlight);
	}

	ret = FUNC7(&ctx->panel);
	if (ret < 0)
		return ret;

	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST | MIPI_DSI_MODE_LPM;
	dsi->format = MIPI_DSI_FMT_RGB888;
	dsi->lanes = 4;

	return FUNC9(dsi);
}