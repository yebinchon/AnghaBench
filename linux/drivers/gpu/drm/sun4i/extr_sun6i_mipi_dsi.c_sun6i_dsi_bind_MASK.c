#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  possible_crtcs; } ;
struct sun6i_dsi {TYPE_1__ encoder; int /*<<< orphan*/  connector; int /*<<< orphan*/  panel; int /*<<< orphan*/  dev; struct sun4i_drv* drv; } ;
struct sun4i_drv {int dummy; } ;
struct drm_device {struct sun4i_drv* dev_private; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_DSI ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_DSI ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct sun6i_dsi* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct drm_device*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sun6i_dsi_connector_funcs ; 
 int /*<<< orphan*/  sun6i_dsi_connector_helper_funcs ; 
 int /*<<< orphan*/  sun6i_dsi_enc_funcs ; 
 int /*<<< orphan*/  sun6i_dsi_enc_helper_funcs ; 

__attribute__((used)) static int FUNC10(struct device *dev, struct device *master,
			 void *data)
{
	struct drm_device *drm = data;
	struct sun4i_drv *drv = drm->dev_private;
	struct sun6i_dsi *dsi = FUNC2(dev);
	int ret;

	if (!dsi->panel)
		return -EPROBE_DEFER;

	dsi->drv = drv;

	FUNC7(&dsi->encoder,
			       &sun6i_dsi_enc_helper_funcs);
	ret = FUNC8(drm,
			       &dsi->encoder,
			       &sun6i_dsi_enc_funcs,
			       DRM_MODE_ENCODER_DSI,
			       NULL);
	if (ret) {
		FUNC1(dsi->dev, "Couldn't initialise the DSI encoder\n");
		return ret;
	}
	dsi->encoder.possible_crtcs = FUNC0(0);

	FUNC4(&dsi->connector,
				 &sun6i_dsi_connector_helper_funcs);
	ret = FUNC5(drm, &dsi->connector,
				 &sun6i_dsi_connector_funcs,
				 DRM_MODE_CONNECTOR_DSI);
	if (ret) {
		FUNC1(dsi->dev,
			"Couldn't initialise the DSI connector\n");
		goto err_cleanup_connector;
	}

	FUNC3(&dsi->connector, &dsi->encoder);
	FUNC9(dsi->panel, &dsi->connector);

	return 0;

err_cleanup_connector:
	FUNC6(&dsi->encoder);
	return ret;
}