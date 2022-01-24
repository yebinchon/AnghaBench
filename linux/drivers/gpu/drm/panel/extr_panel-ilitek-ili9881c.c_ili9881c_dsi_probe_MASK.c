#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct mipi_dsi_device {int lanes; int /*<<< orphan*/  format; int /*<<< orphan*/  mode_flags; TYPE_3__ dev; } ;
struct TYPE_7__ {int /*<<< orphan*/ * funcs; TYPE_3__* dev; } ;
struct ili9881c {TYPE_1__ panel; int /*<<< orphan*/  backlight; int /*<<< orphan*/  reset; int /*<<< orphan*/  power; struct mipi_dsi_device* dsi; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIPI_DSI_FMT_RGB888 ; 
 int /*<<< orphan*/  MIPI_DSI_MODE_VIDEO_SYNC_PULSE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 struct ili9881c* FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  ili9881c_funcs ; 
 int FUNC8 (struct mipi_dsi_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct mipi_dsi_device*,struct ili9881c*) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*) ; 
 struct device_node* FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct mipi_dsi_device *dsi)
{
	struct device_node *np;
	struct ili9881c *ctx;
	int ret;

	ctx = FUNC4(&dsi->dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;
	FUNC9(dsi, ctx);
	ctx->dsi = dsi;

	FUNC7(&ctx->panel);
	ctx->panel.dev = &dsi->dev;
	ctx->panel.funcs = &ili9881c_funcs;

	ctx->power = FUNC5(&dsi->dev, "power");
	if (FUNC0(ctx->power)) {
		FUNC2(&dsi->dev, "Couldn't get our power regulator\n");
		return FUNC1(ctx->power);
	}

	ctx->reset = FUNC3(&dsi->dev, "reset", GPIOD_OUT_LOW);
	if (FUNC0(ctx->reset)) {
		FUNC2(&dsi->dev, "Couldn't get our reset GPIO\n");
		return FUNC1(ctx->reset);
	}

	np = FUNC12(dsi->dev.of_node, "backlight", 0);
	if (np) {
		ctx->backlight = FUNC10(np);
		FUNC11(np);

		if (!ctx->backlight)
			return -EPROBE_DEFER;
	}

	ret = FUNC6(&ctx->panel);
	if (ret < 0)
		return ret;

	dsi->mode_flags = MIPI_DSI_MODE_VIDEO_SYNC_PULSE;
	dsi->format = MIPI_DSI_FMT_RGB888;
	dsi->lanes = 4;

	return FUNC8(dsi);
}