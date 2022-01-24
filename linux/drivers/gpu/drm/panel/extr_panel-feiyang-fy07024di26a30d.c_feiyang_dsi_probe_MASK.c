#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mipi_dsi_device {int lanes; int /*<<< orphan*/  format; int /*<<< orphan*/  mode_flags; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/ * funcs; int /*<<< orphan*/ * dev; } ;
struct feiyang {TYPE_1__ panel; void* backlight; void* reset; void* avdd; void* dvdd; struct mipi_dsi_device* dsi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  MIPI_DSI_FMT_RGB888 ; 
 int /*<<< orphan*/  MIPI_DSI_MODE_VIDEO_BURST ; 
 int FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct feiyang* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  feiyang_funcs ; 
 int FUNC9 (struct mipi_dsi_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct mipi_dsi_device*,struct feiyang*) ; 

__attribute__((used)) static int FUNC11(struct mipi_dsi_device *dsi)
{
	struct feiyang *ctx;
	int ret;

	ctx = FUNC4(&dsi->dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	FUNC10(dsi, ctx);
	ctx->dsi = dsi;

	FUNC8(&ctx->panel);
	ctx->panel.dev = &dsi->dev;
	ctx->panel.funcs = &feiyang_funcs;

	ctx->dvdd = FUNC6(&dsi->dev, "dvdd");
	if (FUNC1(ctx->dvdd)) {
		FUNC0(&dsi->dev, "Couldn't get dvdd regulator\n");
		return FUNC2(ctx->dvdd);
	}

	ctx->avdd = FUNC6(&dsi->dev, "avdd");
	if (FUNC1(ctx->avdd)) {
		FUNC0(&dsi->dev, "Couldn't get avdd regulator\n");
		return FUNC2(ctx->avdd);
	}

	ctx->reset = FUNC3(&dsi->dev, "reset", GPIOD_OUT_LOW);
	if (FUNC1(ctx->reset)) {
		FUNC0(&dsi->dev, "Couldn't get our reset GPIO\n");
		return FUNC2(ctx->reset);
	}

	ctx->backlight = FUNC5(&dsi->dev);
	if (FUNC1(ctx->backlight))
		return FUNC2(ctx->backlight);

	ret = FUNC7(&ctx->panel);
	if (ret < 0)
		return ret;

	dsi->mode_flags = MIPI_DSI_MODE_VIDEO_BURST;
	dsi->format = MIPI_DSI_FMT_RGB888;
	dsi->lanes = 4;

	return FUNC9(dsi);
}