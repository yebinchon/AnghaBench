#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct mipi_dsi_device {int lanes; int mode_flags; int /*<<< orphan*/  format; struct device dev; } ;
struct TYPE_5__ {int /*<<< orphan*/ * funcs; struct device* dev; } ;
struct jh057n {TYPE_1__ panel; void* iovcc; void* vcc; void* backlight; struct device* dev; void* reset_gpio; } ;
struct TYPE_6__ {int /*<<< orphan*/  vrefresh; int /*<<< orphan*/  vdisplay; int /*<<< orphan*/  hdisplay; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  MIPI_DSI_FMT_RGB888 ; 
 int MIPI_DSI_MODE_VIDEO ; 
 int MIPI_DSI_MODE_VIDEO_BURST ; 
 int MIPI_DSI_MODE_VIDEO_SYNC_PULSE ; 
 int FUNC3 (void*) ; 
 TYPE_4__ default_mode ; 
 void* FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct jh057n* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct device*) ; 
 void* FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct jh057n*) ; 
 int /*<<< orphan*/  jh057n_drm_funcs ; 
 int FUNC12 (struct mipi_dsi_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mipi_dsi_device*,struct jh057n*) ; 

__attribute__((used)) static int FUNC15(struct mipi_dsi_device *dsi)
{
	struct device *dev = &dsi->dev;
	struct jh057n *ctx;
	int ret;

	ctx = FUNC5(dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	ctx->reset_gpio = FUNC4(dev, "reset", GPIOD_OUT_LOW);
	if (FUNC2(ctx->reset_gpio)) {
		FUNC0(dev, "cannot get reset gpio\n");
		return FUNC3(ctx->reset_gpio);
	}

	FUNC14(dsi, ctx);

	ctx->dev = dev;

	dsi->lanes = 4;
	dsi->format = MIPI_DSI_FMT_RGB888;
	dsi->mode_flags = MIPI_DSI_MODE_VIDEO |
		MIPI_DSI_MODE_VIDEO_BURST | MIPI_DSI_MODE_VIDEO_SYNC_PULSE;

	ctx->backlight = FUNC6(dev);
	if (FUNC2(ctx->backlight))
		return FUNC3(ctx->backlight);

	ctx->vcc = FUNC7(dev, "vcc");
	if (FUNC2(ctx->vcc)) {
		ret = FUNC3(ctx->vcc);
		if (ret != -EPROBE_DEFER)
			FUNC0(dev,
				      "Failed to request vcc regulator: %d\n",
				      ret);
		return ret;
	}
	ctx->iovcc = FUNC7(dev, "iovcc");
	if (FUNC2(ctx->iovcc)) {
		ret = FUNC3(ctx->iovcc);
		if (ret != -EPROBE_DEFER)
			FUNC0(dev,
				      "Failed to request iovcc regulator: %d\n",
				      ret);
		return ret;
	}

	FUNC9(&ctx->panel);
	ctx->panel.dev = dev;
	ctx->panel.funcs = &jh057n_drm_funcs;

	FUNC8(&ctx->panel);

	ret = FUNC12(dsi);
	if (ret < 0) {
		FUNC0(dev,
			      "mipi_dsi_attach failed (%d). Is host ready?\n",
			      ret);
		FUNC10(&ctx->panel);
		return ret;
	}

	FUNC1(dev, "%ux%u@%u %ubpp dsi %udl - ready\n",
		     default_mode.hdisplay, default_mode.vdisplay,
		     default_mode.vrefresh,
		     FUNC13(dsi->format), dsi->lanes);

	FUNC11(ctx);
	return 0;
}