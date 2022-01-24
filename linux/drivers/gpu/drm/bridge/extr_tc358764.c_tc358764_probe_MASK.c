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
struct TYPE_3__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/ * funcs; } ;
struct tc358764 {TYPE_1__ bridge; struct device* dev; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct mipi_dsi_device {int lanes; int mode_flags; int /*<<< orphan*/  format; struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MIPI_DSI_FMT_RGB888 ; 
 int MIPI_DSI_MODE_LPM ; 
 int MIPI_DSI_MODE_VIDEO ; 
 int MIPI_DSI_MODE_VIDEO_AUTO_VERT ; 
 int MIPI_DSI_MODE_VIDEO_BURST ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct tc358764* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (struct mipi_dsi_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct mipi_dsi_device*,struct tc358764*) ; 
 int /*<<< orphan*/  tc358764_bridge_funcs ; 
 int FUNC6 (struct tc358764*) ; 
 int FUNC7 (struct tc358764*) ; 

__attribute__((used)) static int FUNC8(struct mipi_dsi_device *dsi)
{
	struct device *dev = &dsi->dev;
	struct tc358764 *ctx;
	int ret;

	ctx = FUNC1(dev, sizeof(struct tc358764), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	FUNC5(dsi, ctx);

	ctx->dev = dev;

	dsi->lanes = 4;
	dsi->format = MIPI_DSI_FMT_RGB888;
	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST
		| MIPI_DSI_MODE_VIDEO_AUTO_VERT | MIPI_DSI_MODE_LPM;

	ret = FUNC7(ctx);
	if (ret < 0)
		return ret;

	ret = FUNC6(ctx);
	if (ret < 0)
		return ret;

	ctx->bridge.funcs = &tc358764_bridge_funcs;
	ctx->bridge.of_node = dev->of_node;

	FUNC2(&ctx->bridge);

	ret = FUNC4(dsi);
	if (ret < 0) {
		FUNC3(&ctx->bridge);
		FUNC0(dev, "failed to attach dsi\n");
	}

	return ret;
}