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
struct TYPE_2__ {struct drm_panel* panel; } ;
struct fsl_dcu_drm_device {int /*<<< orphan*/  encoder; TYPE_1__ connector; int /*<<< orphan*/  np; } ;
struct drm_panel {int dummy; } ;
struct drm_bridge {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_panel*) ; 
 int FUNC1 (struct drm_panel*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct drm_bridge*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drm_panel**,struct drm_bridge**) ; 
 int FUNC4 (struct fsl_dcu_drm_device*,struct drm_panel*) ; 
 struct drm_panel* FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 struct device_node* FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int FUNC8(struct fsl_dcu_drm_device *fsl_dev)
{
	struct device_node *panel_node;
	struct drm_panel *panel;
	struct drm_bridge *bridge;
	int ret;

	/* This is for backward compatibility */
	panel_node = FUNC7(fsl_dev->np, "fsl,panel", 0);
	if (panel_node) {
		fsl_dev->connector.panel = FUNC5(panel_node);
		FUNC6(panel_node);
		if (FUNC0(fsl_dev->connector.panel))
			return FUNC1(fsl_dev->connector.panel);

		return FUNC4(fsl_dev, fsl_dev->connector.panel);
	}

	ret = FUNC3(fsl_dev->np, 0, 0, &panel, &bridge);
	if (ret)
		return ret;

	if (panel) {
		fsl_dev->connector.panel = panel;
		return FUNC4(fsl_dev, panel);
	}

	return FUNC2(&fsl_dev->encoder, bridge, NULL);
}