#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  possible_crtcs; } ;
struct TYPE_9__ {int /*<<< orphan*/  dpms; } ;
struct tegra_output {TYPE_1__ encoder; int /*<<< orphan*/  dev; TYPE_3__ connector; } ;
struct tegra_dc {int /*<<< orphan*/  base; struct tegra_output* rgb; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_LVDS ; 
 int /*<<< orphan*/  DRM_MODE_DPMS_OFF ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_LVDS ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct drm_device*,struct tegra_output*) ; 
 int /*<<< orphan*/  tegra_rgb_connector_funcs ; 
 int /*<<< orphan*/  tegra_rgb_connector_helper_funcs ; 
 int /*<<< orphan*/  tegra_rgb_encoder_funcs ; 
 int /*<<< orphan*/  tegra_rgb_encoder_helper_funcs ; 

int FUNC9(struct drm_device *drm, struct tegra_dc *dc)
{
	struct tegra_output *output = dc->rgb;
	int err;

	if (!dc->rgb)
		return -ENODEV;

	FUNC3(drm, &output->connector, &tegra_rgb_connector_funcs,
			   DRM_MODE_CONNECTOR_LVDS);
	FUNC2(&output->connector,
				 &tegra_rgb_connector_helper_funcs);
	output->connector.dpms = DRM_MODE_DPMS_OFF;

	FUNC7(drm, &output->encoder, &tegra_rgb_encoder_funcs,
			 DRM_MODE_ENCODER_LVDS, NULL);
	FUNC6(&output->encoder,
			       &tegra_rgb_encoder_helper_funcs);

	FUNC1(&output->connector,
					  &output->encoder);
	FUNC4(&output->connector);

	err = FUNC8(drm, output);
	if (err < 0) {
		FUNC0(output->dev, "failed to initialize output: %d\n", err);
		return err;
	}

	/*
	 * Other outputs can be attached to either display controller. The RGB
	 * outputs are an exception and work only with their parent display
	 * controller.
	 */
	output->encoder.possible_crtcs = FUNC5(&dc->base);

	return 0;
}