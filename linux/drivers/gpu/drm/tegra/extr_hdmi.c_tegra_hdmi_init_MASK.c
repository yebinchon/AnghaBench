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
struct tegra_hdmi {int /*<<< orphan*/  dev; int /*<<< orphan*/  vdd; int /*<<< orphan*/  pll; int /*<<< orphan*/  hdmi; TYPE_1__ output; } ;
struct host1x_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  parent; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_HDMIA ; 
 int /*<<< orphan*/  DRM_MODE_DPMS_OFF ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_TMDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct drm_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct tegra_hdmi* FUNC8 (struct host1x_client*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tegra_hdmi_connector_funcs ; 
 int /*<<< orphan*/  tegra_hdmi_connector_helper_funcs ; 
 int /*<<< orphan*/  tegra_hdmi_encoder_funcs ; 
 int /*<<< orphan*/  tegra_hdmi_encoder_helper_funcs ; 
 int FUNC10 (struct drm_device*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC11(struct host1x_client *client)
{
	struct drm_device *drm = FUNC1(client->parent);
	struct tegra_hdmi *hdmi = FUNC8(client);
	int err;

	hdmi->output.dev = client->dev;

	FUNC4(drm, &hdmi->output.connector,
			   &tegra_hdmi_connector_funcs,
			   DRM_MODE_CONNECTOR_HDMIA);
	FUNC3(&hdmi->output.connector,
				 &tegra_hdmi_connector_helper_funcs);
	hdmi->output.connector.dpms = DRM_MODE_DPMS_OFF;

	FUNC7(drm, &hdmi->output.encoder, &tegra_hdmi_encoder_funcs,
			 DRM_MODE_ENCODER_TMDS, NULL);
	FUNC6(&hdmi->output.encoder,
			       &tegra_hdmi_encoder_helper_funcs);

	FUNC2(&hdmi->output.connector,
					  &hdmi->output.encoder);
	FUNC5(&hdmi->output.connector);

	err = FUNC10(drm, &hdmi->output);
	if (err < 0) {
		FUNC0(client->dev, "failed to initialize output: %d\n", err);
		return err;
	}

	hdmi->output.encoder.possible_crtcs = 0x3;

	err = FUNC9(hdmi->hdmi);
	if (err < 0) {
		FUNC0(client->dev, "failed to enable HDMI regulator: %d\n",
			err);
		return err;
	}

	err = FUNC9(hdmi->pll);
	if (err < 0) {
		FUNC0(hdmi->dev, "failed to enable PLL regulator: %d\n", err);
		return err;
	}

	err = FUNC9(hdmi->vdd);
	if (err < 0) {
		FUNC0(hdmi->dev, "failed to enable VDD regulator: %d\n", err);
		return err;
	}

	return 0;
}