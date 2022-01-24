#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int possible_crtcs; } ;
struct TYPE_11__ {int /*<<< orphan*/  dpms; } ;
struct TYPE_9__ {TYPE_2__ encoder; TYPE_4__ connector; int /*<<< orphan*/  dev; } ;
struct tegra_dsi {TYPE_1__ output; int /*<<< orphan*/  dev; int /*<<< orphan*/  master; } ;
struct host1x_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  parent; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_DSI ; 
 int /*<<< orphan*/  DRM_MODE_DPMS_OFF ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_DSI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct drm_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct tegra_dsi* FUNC8 (struct host1x_client*) ; 
 int /*<<< orphan*/  tegra_dsi_connector_funcs ; 
 int /*<<< orphan*/  tegra_dsi_connector_helper_funcs ; 
 int /*<<< orphan*/  tegra_dsi_encoder_funcs ; 
 int /*<<< orphan*/  tegra_dsi_encoder_helper_funcs ; 
 int FUNC9 (struct drm_device*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC10(struct host1x_client *client)
{
	struct drm_device *drm = FUNC1(client->parent);
	struct tegra_dsi *dsi = FUNC8(client);
	int err;

	/* Gangsters must not register their own outputs. */
	if (!dsi->master) {
		dsi->output.dev = client->dev;

		FUNC4(drm, &dsi->output.connector,
				   &tegra_dsi_connector_funcs,
				   DRM_MODE_CONNECTOR_DSI);
		FUNC3(&dsi->output.connector,
					 &tegra_dsi_connector_helper_funcs);
		dsi->output.connector.dpms = DRM_MODE_DPMS_OFF;

		FUNC7(drm, &dsi->output.encoder,
				 &tegra_dsi_encoder_funcs,
				 DRM_MODE_ENCODER_DSI, NULL);
		FUNC6(&dsi->output.encoder,
				       &tegra_dsi_encoder_helper_funcs);

		FUNC2(&dsi->output.connector,
						  &dsi->output.encoder);
		FUNC5(&dsi->output.connector);

		err = FUNC9(drm, &dsi->output);
		if (err < 0)
			FUNC0(dsi->dev, "failed to initialize output: %d\n",
				err);

		dsi->output.encoder.possible_crtcs = 0x3;
	}

	return 0;
}