#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct truly_nt35597 {int /*<<< orphan*/  panel; struct mipi_dsi_device** dsi; struct device* dev; int /*<<< orphan*/  config; } ;
struct mipi_dsi_host {int dummy; } ;
struct mipi_dsi_device_info {char* type; int /*<<< orphan*/ * node; int /*<<< orphan*/  channel; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct mipi_dsi_device {int lanes; int mode_flags; int /*<<< orphan*/  format; struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mipi_dsi_device**) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct mipi_dsi_device*) ; 
 int MIPI_DSI_CLOCK_NON_CONTINUOUS ; 
 int /*<<< orphan*/  MIPI_DSI_FMT_RGB888 ; 
 int MIPI_DSI_MODE_LPM ; 
 int MIPI_DSI_MODE_VIDEO ; 
 int FUNC3 (struct mipi_dsi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct truly_nt35597* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct mipi_dsi_device*) ; 
 struct mipi_dsi_device* FUNC8 (struct mipi_dsi_host*,struct mipi_dsi_device_info const*) ; 
 int /*<<< orphan*/  FUNC9 (struct mipi_dsi_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct mipi_dsi_device*,struct truly_nt35597*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 struct mipi_dsi_host* FUNC12 (struct device_node*) ; 
 struct device_node* FUNC13 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct device_node*) ; 
 int FUNC15 (struct truly_nt35597*) ; 

__attribute__((used)) static int FUNC16(struct mipi_dsi_device *dsi)
{
	struct device *dev = &dsi->dev;
	struct truly_nt35597 *ctx;
	struct mipi_dsi_device *dsi1_device;
	struct device_node *dsi1;
	struct mipi_dsi_host *dsi1_host;
	struct mipi_dsi_device *dsi_dev;
	int ret = 0;
	int i;

	const struct mipi_dsi_device_info info = {
		.type = "trulynt35597",
		.channel = 0,
		.node = NULL,
	};

	ctx = FUNC5(dev, sizeof(*ctx), GFP_KERNEL);

	if (!ctx)
		return -ENOMEM;

	/*
	 * This device represents itself as one with two input ports which are
	 * fed by the output ports of the two DSI controllers . The DSI0 is
	 * the master controller and has most of the panel related info in its
	 * child node.
	 */

	ctx->config = FUNC11(dev);

	if (!ctx->config) {
		FUNC4(dev, "missing device configuration\n");
		return -ENODEV;
	}

	dsi1 = FUNC13(dsi->dev.of_node, 1, -1);
	if (!dsi1) {
		FUNC1(dev,
			"failed to get remote node for dsi1_device\n");
		return -ENODEV;
	}

	dsi1_host = FUNC12(dsi1);
	FUNC14(dsi1);
	if (!dsi1_host) {
		FUNC1(dev, "failed to find dsi host\n");
		return -EPROBE_DEFER;
	}

	/* register the second DSI device */
	dsi1_device = FUNC8(dsi1_host, &info);
	if (FUNC2(dsi1_device)) {
		FUNC1(dev, "failed to create dsi device\n");
		return FUNC3(dsi1_device);
	}

	FUNC10(dsi, ctx);

	ctx->dev = dev;
	ctx->dsi[0] = dsi;
	ctx->dsi[1] = dsi1_device;

	ret = FUNC15(ctx);
	if (ret) {
		FUNC1(dev, "failed to add panel\n");
		goto err_panel_add;
	}

	for (i = 0; i < FUNC0(ctx->dsi); i++) {
		dsi_dev = ctx->dsi[i];
		dsi_dev->lanes = 4;
		dsi_dev->format = MIPI_DSI_FMT_RGB888;
		dsi_dev->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_LPM |
			MIPI_DSI_CLOCK_NON_CONTINUOUS;
		ret = FUNC7(dsi_dev);
		if (ret < 0) {
			FUNC1(dev,
				"dsi attach failed i = %d\n", i);
			goto err_dsi_attach;
		}
	}

	return 0;

err_dsi_attach:
	FUNC6(&ctx->panel);
err_panel_add:
	FUNC9(dsi1_device);
	return ret;
}