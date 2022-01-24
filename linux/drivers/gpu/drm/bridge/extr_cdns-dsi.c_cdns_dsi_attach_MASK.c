#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mipi_dsi_host {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct mipi_dsi_device {int mode_flags; int /*<<< orphan*/  name; TYPE_3__ dev; int /*<<< orphan*/  channel; } ;
struct drm_panel {int dummy; } ;
typedef  struct drm_panel drm_bridge ;
struct device_node {int dummy; } ;
struct cdns_dsi_output {struct drm_panel* panel; struct drm_panel* bridge; struct mipi_dsi_device* dev; } ;
struct cdns_dsi_input {int /*<<< orphan*/  bridge; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct cdns_dsi {TYPE_2__ base; struct cdns_dsi_input input; struct cdns_dsi_output output; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_DSI ; 
 int /*<<< orphan*/  DSI_OUTPUT_PORT ; 
 int EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 int ENOTSUPP ; 
 struct drm_panel* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct drm_panel*) ; 
 int MIPI_DSI_MODE_VIDEO_BURST ; 
 int FUNC2 (struct drm_panel*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct drm_panel* FUNC5 (struct drm_panel*,int /*<<< orphan*/ ) ; 
 struct drm_panel* FUNC6 (int /*<<< orphan*/ ) ; 
 struct drm_panel* FUNC7 (struct device_node*) ; 
 struct device_node* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*) ; 
 struct cdns_dsi* FUNC11 (struct mipi_dsi_host*) ; 

__attribute__((used)) static int FUNC12(struct mipi_dsi_host *host,
			   struct mipi_dsi_device *dev)
{
	struct cdns_dsi *dsi = FUNC11(host);
	struct cdns_dsi_output *output = &dsi->output;
	struct cdns_dsi_input *input = &dsi->input;
	struct drm_bridge *bridge;
	struct drm_panel *panel;
	struct device_node *np;
	int ret;

	/*
	 * We currently do not support connecting several DSI devices to the
	 * same host. In order to support that we'd need the DRM bridge
	 * framework to allow dynamic reconfiguration of the bridge chain.
	 */
	if (output->dev)
		return -EBUSY;

	/* We do not support burst mode yet. */
	if (dev->mode_flags & MIPI_DSI_MODE_VIDEO_BURST)
		return -ENOTSUPP;

	/*
	 * The host <-> device link might be described using an OF-graph
	 * representation, in this case we extract the device of_node from
	 * this representation, otherwise we use dsidev->dev.of_node which
	 * should have been filled by the core.
	 */
	np = FUNC8(dsi->base.dev->of_node, DSI_OUTPUT_PORT,
				      dev->channel);
	if (!np)
		np = FUNC9(dev->dev.of_node);

	panel = FUNC7(np);
	if (!FUNC1(panel)) {
		bridge = FUNC5(panel, DRM_MODE_CONNECTOR_DSI);
	} else {
		bridge = FUNC6(dev->dev.of_node);
		if (!bridge)
			bridge = FUNC0(-EINVAL);
	}

	FUNC10(np);

	if (FUNC1(bridge)) {
		ret = FUNC2(bridge);
		FUNC3(host->dev, "failed to add DSI device %s (err = %d)",
			dev->name, ret);
		return ret;
	}

	output->dev = dev;
	output->bridge = bridge;
	output->panel = panel;

	/*
	 * The DSI output has been properly configured, we can now safely
	 * register the input to the bridge framework so that it can take place
	 * in a display pipeline.
	 */
	FUNC4(&input->bridge);

	return 0;
}