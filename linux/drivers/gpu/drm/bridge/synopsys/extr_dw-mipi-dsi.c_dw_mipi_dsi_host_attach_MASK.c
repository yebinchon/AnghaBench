#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mipi_dsi_host {TYPE_1__* dev; } ;
struct mipi_dsi_device {scalar_t__ lanes; int /*<<< orphan*/  mode_flags; int /*<<< orphan*/  format; int /*<<< orphan*/  channel; } ;
struct dw_mipi_dsi_plat_data {scalar_t__ max_data_lanes; int /*<<< orphan*/  priv_data; TYPE_2__* host_ops; } ;
struct dw_mipi_dsi {scalar_t__ lanes; int /*<<< orphan*/  bridge; struct drm_bridge* panel_bridge; int /*<<< orphan*/  mode_flags; int /*<<< orphan*/  format; int /*<<< orphan*/  channel; int /*<<< orphan*/  dev; struct dw_mipi_dsi_plat_data* plat_data; } ;
struct drm_panel {int dummy; } ;
struct drm_bridge {int dummy; } ;
struct TYPE_4__ {int (* attach ) (int /*<<< orphan*/ ,struct mipi_dsi_device*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_DSI ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct drm_bridge*) ; 
 int FUNC1 (struct drm_bridge*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct drm_panel**,struct drm_bridge**) ; 
 struct drm_bridge* FUNC5 (struct drm_panel*,int /*<<< orphan*/ ) ; 
 struct dw_mipi_dsi* FUNC6 (struct mipi_dsi_host*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct mipi_dsi_device*) ; 

__attribute__((used)) static int FUNC8(struct mipi_dsi_host *host,
				   struct mipi_dsi_device *device)
{
	struct dw_mipi_dsi *dsi = FUNC6(host);
	const struct dw_mipi_dsi_plat_data *pdata = dsi->plat_data;
	struct drm_bridge *bridge;
	struct drm_panel *panel;
	int ret;

	if (device->lanes > dsi->plat_data->max_data_lanes) {
		FUNC2(dsi->dev, "the number of data lanes(%u) is too many\n",
			device->lanes);
		return -EINVAL;
	}

	dsi->lanes = device->lanes;
	dsi->channel = device->channel;
	dsi->format = device->format;
	dsi->mode_flags = device->mode_flags;

	ret = FUNC4(host->dev->of_node, 1, 0,
					  &panel, &bridge);
	if (ret)
		return ret;

	if (panel) {
		bridge = FUNC5(panel, DRM_MODE_CONNECTOR_DSI);
		if (FUNC0(bridge))
			return FUNC1(bridge);
	}

	dsi->panel_bridge = bridge;

	FUNC3(&dsi->bridge);

	if (pdata->host_ops && pdata->host_ops->attach) {
		ret = pdata->host_ops->attach(pdata->priv_data, device);
		if (ret < 0)
			return ret;
	}

	return 0;
}