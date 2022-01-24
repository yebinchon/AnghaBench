#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * funcs; struct device* dev; } ;
struct s6e8aa0 {TYPE_1__ panel; scalar_t__ brightness; int /*<<< orphan*/  reset_gpio; TYPE_4__* supplies; struct device* dev; } ;
struct device {int dummy; } ;
struct mipi_dsi_device {int lanes; int mode_flags; int /*<<< orphan*/  format; struct device dev; } ;
struct TYPE_7__ {char* supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int ENOMEM ; 
 scalar_t__ GAMMA_LEVEL_NUM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIPI_DSI_FMT_RGB888 ; 
 int MIPI_DSI_MODE_EOT_PACKET ; 
 int MIPI_DSI_MODE_VIDEO ; 
 int MIPI_DSI_MODE_VIDEO_AUTO_VERT ; 
 int MIPI_DSI_MODE_VIDEO_BURST ; 
 int MIPI_DSI_MODE_VIDEO_HBP ; 
 int MIPI_DSI_MODE_VIDEO_HFP ; 
 int MIPI_DSI_MODE_VIDEO_HSA ; 
 int MIPI_DSI_MODE_VSYNC_FLUSH ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct s6e8aa0* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int FUNC10 (struct mipi_dsi_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct mipi_dsi_device*,struct s6e8aa0*) ; 
 int /*<<< orphan*/  s6e8aa0_drm_funcs ; 
 int FUNC12 (struct s6e8aa0*) ; 

__attribute__((used)) static int FUNC13(struct mipi_dsi_device *dsi)
{
	struct device *dev = &dsi->dev;
	struct s6e8aa0 *ctx;
	int ret;

	ctx = FUNC5(dev, sizeof(struct s6e8aa0), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	FUNC11(dsi, ctx);

	ctx->dev = dev;

	dsi->lanes = 4;
	dsi->format = MIPI_DSI_FMT_RGB888;
	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST
		| MIPI_DSI_MODE_VIDEO_HFP | MIPI_DSI_MODE_VIDEO_HBP
		| MIPI_DSI_MODE_VIDEO_HSA | MIPI_DSI_MODE_EOT_PACKET
		| MIPI_DSI_MODE_VSYNC_FLUSH | MIPI_DSI_MODE_VIDEO_AUTO_VERT;

	ret = FUNC12(ctx);
	if (ret < 0)
		return ret;

	ctx->supplies[0].supply = "vdd3";
	ctx->supplies[1].supply = "vci";
	ret = FUNC6(dev, FUNC0(ctx->supplies),
				      ctx->supplies);
	if (ret < 0) {
		FUNC3(dev, "failed to get regulators: %d\n", ret);
		return ret;
	}

	ctx->reset_gpio = FUNC4(dev, "reset", GPIOD_OUT_HIGH);
	if (FUNC1(ctx->reset_gpio)) {
		FUNC3(dev, "cannot get reset-gpios %ld\n",
			FUNC2(ctx->reset_gpio));
		return FUNC2(ctx->reset_gpio);
	}

	ctx->brightness = GAMMA_LEVEL_NUM - 1;

	FUNC8(&ctx->panel);
	ctx->panel.dev = dev;
	ctx->panel.funcs = &s6e8aa0_drm_funcs;

	ret = FUNC7(&ctx->panel);
	if (ret < 0)
		return ret;

	ret = FUNC10(dsi);
	if (ret < 0)
		FUNC9(&ctx->panel);

	return ret;
}