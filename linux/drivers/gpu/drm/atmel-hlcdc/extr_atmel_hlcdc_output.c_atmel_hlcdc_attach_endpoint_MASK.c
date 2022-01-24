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
struct drm_panel {int dummy; } ;
struct drm_device {TYPE_4__* dev; } ;
struct drm_bridge {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {int possible_crtcs; } ;
struct atmel_hlcdc_rgb_output {scalar_t__ bus_fmt; TYPE_1__ encoder; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_Unknown ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_NONE ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct drm_bridge*) ; 
 int FUNC1 (struct drm_bridge*) ; 
 scalar_t__ FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  atmel_hlcdc_panel_encoder_funcs ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*,int) ; 
 struct atmel_hlcdc_rgb_output* FUNC4 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,struct drm_bridge*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (struct drm_device*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct drm_panel**,struct drm_bridge**) ; 
 struct drm_bridge* FUNC9 (struct drm_panel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_bridge*) ; 
 struct device_node* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct device_node*) ; 

__attribute__((used)) static int FUNC13(struct drm_device *dev, int endpoint)
{
	struct atmel_hlcdc_rgb_output *output;
	struct device_node *ep;
	struct drm_panel *panel;
	struct drm_bridge *bridge;
	int ret;

	ep = FUNC11(dev->dev->of_node, 0, endpoint);
	if (!ep)
		return -ENODEV;

	ret = FUNC8(dev->dev->of_node, 0, endpoint,
					  &panel, &bridge);
	if (ret) {
		FUNC12(ep);
		return ret;
	}

	output = FUNC4(dev->dev, sizeof(*output), GFP_KERNEL);
	if (!output) {
		FUNC12(ep);
		return -ENOMEM;
	}

	output->bus_fmt = FUNC2(ep);
	FUNC12(ep);
	if (output->bus_fmt < 0) {
		FUNC3(dev->dev, "endpoint %d: invalid bus width\n", endpoint);
		return -EINVAL;
	}

	ret = FUNC7(dev, &output->encoder,
			       &atmel_hlcdc_panel_encoder_funcs,
			       DRM_MODE_ENCODER_NONE, NULL);
	if (ret)
		return ret;

	output->encoder.possible_crtcs = 0x1;

	if (panel) {
		bridge = FUNC9(panel, DRM_MODE_CONNECTOR_Unknown);
		if (FUNC0(bridge))
			return FUNC1(bridge);
	}

	if (bridge) {
		ret = FUNC5(&output->encoder, bridge, NULL);
		if (!ret)
			return 0;

		if (panel)
			FUNC10(bridge);
	}

	FUNC6(&output->encoder);

	return ret;
}