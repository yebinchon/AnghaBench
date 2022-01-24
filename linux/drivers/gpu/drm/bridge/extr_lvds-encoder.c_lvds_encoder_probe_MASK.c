#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * funcs; int /*<<< orphan*/  of_node; } ;
struct lvds_encoder {TYPE_1__ bridge; struct drm_panel* panel_bridge; struct drm_panel* powerdown_gpio; } ;
struct drm_panel {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_LVDS ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC0 (struct drm_panel*) ; 
 int FUNC1 (struct drm_panel*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 struct drm_panel* FUNC4 (struct device*,struct drm_panel*,int /*<<< orphan*/ ) ; 
 struct drm_panel* FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct lvds_encoder* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  funcs ; 
 struct drm_panel* FUNC8 (struct device_node*) ; 
 struct device_node* FUNC9 (struct device_node*,char*) ; 
 struct device_node* FUNC10 (int /*<<< orphan*/ ,int) ; 
 struct device_node* FUNC11 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC12 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct lvds_encoder*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *port;
	struct device_node *endpoint;
	struct device_node *panel_node;
	struct drm_panel *panel;
	struct lvds_encoder *lvds_encoder;

	lvds_encoder = FUNC6(dev, sizeof(*lvds_encoder), GFP_KERNEL);
	if (!lvds_encoder)
		return -ENOMEM;

	lvds_encoder->powerdown_gpio = FUNC5(dev, "powerdown",
							       GPIOD_OUT_HIGH);
	if (FUNC0(lvds_encoder->powerdown_gpio)) {
		int err = FUNC1(lvds_encoder->powerdown_gpio);

		if (err != -EPROBE_DEFER)
			FUNC3(dev, "powerdown GPIO failure: %d\n", err);
		return err;
	}

	/* Locate the panel DT node. */
	port = FUNC10(dev->of_node, 1);
	if (!port) {
		FUNC2(dev, "port 1 not found\n");
		return -ENXIO;
	}

	endpoint = FUNC9(port, "endpoint");
	FUNC12(port);
	if (!endpoint) {
		FUNC2(dev, "no endpoint for port 1\n");
		return -ENXIO;
	}

	panel_node = FUNC11(endpoint);
	FUNC12(endpoint);
	if (!panel_node) {
		FUNC2(dev, "no remote endpoint for port 1\n");
		return -ENXIO;
	}

	panel = FUNC8(panel_node);
	FUNC12(panel_node);
	if (FUNC0(panel)) {
		FUNC2(dev, "panel not found, deferring probe\n");
		return FUNC1(panel);
	}

	lvds_encoder->panel_bridge =
		FUNC4(dev, panel, DRM_MODE_CONNECTOR_LVDS);
	if (FUNC0(lvds_encoder->panel_bridge))
		return FUNC1(lvds_encoder->panel_bridge);

	/* The panel_bridge bridge is attached to the panel's of_node,
	 * but we need a bridge attached to our of_node for our user
	 * to look up.
	 */
	lvds_encoder->bridge.of_node = dev->of_node;
	lvds_encoder->bridge.funcs = &funcs;
	FUNC7(&lvds_encoder->bridge);

	FUNC13(pdev, lvds_encoder);

	return 0;
}