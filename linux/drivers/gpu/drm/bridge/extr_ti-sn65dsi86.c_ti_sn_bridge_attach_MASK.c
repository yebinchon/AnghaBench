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
struct ti_sn_bridge {int /*<<< orphan*/  connector; int /*<<< orphan*/  panel; struct mipi_dsi_device* dsi; int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; int /*<<< orphan*/  host_node; } ;
struct mipi_dsi_host {int dummy; } ;
struct mipi_dsi_device_info {char* type; int /*<<< orphan*/ * node; int /*<<< orphan*/  channel; } ;
struct mipi_dsi_device {int lanes; int /*<<< orphan*/  mode_flags; int /*<<< orphan*/  format; } ;
struct drm_bridge {int /*<<< orphan*/  encoder; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DPPLL_CLK_SRC_DSICLK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_eDP ; 
 int ENODEV ; 
 scalar_t__ FUNC1 (struct mipi_dsi_device*) ; 
 int /*<<< orphan*/  MIPI_DSI_CLOCK_NON_CONTINUOUS ; 
 int /*<<< orphan*/  MIPI_DSI_FMT_RGB888 ; 
 int /*<<< orphan*/  MIPI_DSI_MODE_VIDEO ; 
 int FUNC2 (struct mipi_dsi_device*) ; 
 int /*<<< orphan*/  SN_DPPLL_SRC_REG ; 
 struct ti_sn_bridge* FUNC3 (struct drm_bridge*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct mipi_dsi_device*) ; 
 struct mipi_dsi_device* FUNC10 (struct mipi_dsi_host*,struct mipi_dsi_device_info const*) ; 
 int /*<<< orphan*/  FUNC11 (struct mipi_dsi_device*) ; 
 struct mipi_dsi_host* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  ti_sn_bridge_connector_funcs ; 
 int /*<<< orphan*/  ti_sn_bridge_connector_helper_funcs ; 

__attribute__((used)) static int FUNC16(struct drm_bridge *bridge)
{
	int ret, val;
	struct ti_sn_bridge *pdata = FUNC3(bridge);
	struct mipi_dsi_host *host;
	struct mipi_dsi_device *dsi;
	const struct mipi_dsi_device_info info = { .type = "ti_sn_bridge",
						   .channel = 0,
						   .node = NULL,
						 };

	ret = FUNC7(bridge->dev, &pdata->connector,
				 &ti_sn_bridge_connector_funcs,
				 DRM_MODE_CONNECTOR_eDP);
	if (ret) {
		FUNC0("Failed to initialize connector with drm\n");
		return ret;
	}

	FUNC6(&pdata->connector,
				 &ti_sn_bridge_connector_helper_funcs);
	FUNC4(&pdata->connector, bridge->encoder);

	/*
	 * TODO: ideally finding host resource and dsi dev registration needs
	 * to be done in bridge probe. But some existing DSI host drivers will
	 * wait for any of the drm_bridge/drm_panel to get added to the global
	 * bridge/panel list, before completing their probe. So if we do the
	 * dsi dev registration part in bridge probe, before populating in
	 * the global bridge list, then it will cause deadlock as dsi host probe
	 * will never complete, neither our bridge probe. So keeping it here
	 * will satisfy most of the existing host drivers. Once the host driver
	 * is fixed we can move the below code to bridge probe safely.
	 */
	host = FUNC12(pdata->host_node);
	if (!host) {
		FUNC0("failed to find dsi host\n");
		ret = -ENODEV;
		goto err_dsi_host;
	}

	dsi = FUNC10(host, &info);
	if (FUNC1(dsi)) {
		FUNC0("failed to create dsi device\n");
		ret = FUNC2(dsi);
		goto err_dsi_host;
	}

	/* TODO: setting to 4 lanes always for now */
	dsi->lanes = 4;
	dsi->format = MIPI_DSI_FMT_RGB888;
	dsi->mode_flags = MIPI_DSI_MODE_VIDEO;

	/* check if continuous dsi clock is required or not */
	FUNC13(pdata->dev);
	FUNC15(pdata->regmap, SN_DPPLL_SRC_REG, &val);
	FUNC14(pdata->dev);
	if (!(val & DPPLL_CLK_SRC_DSICLK))
		dsi->mode_flags |= MIPI_DSI_CLOCK_NON_CONTINUOUS;

	ret = FUNC9(dsi);
	if (ret < 0) {
		FUNC0("failed to attach dsi to host\n");
		goto err_dsi_attach;
	}
	pdata->dsi = dsi;

	/* attach panel to bridge */
	FUNC8(pdata->panel, &pdata->connector);

	return 0;

err_dsi_attach:
	FUNC11(dsi);
err_dsi_host:
	FUNC5(&pdata->connector);
	return ret;
}