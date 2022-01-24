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
struct vc4_dpi {int /*<<< orphan*/  encoder; TYPE_1__* pdev; } ;
struct drm_panel {int dummy; } ;
struct drm_bridge {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_DPI ; 
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ ,struct drm_bridge*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drm_panel**,struct drm_bridge**) ; 
 struct drm_bridge* FUNC2 (struct drm_panel*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct vc4_dpi *dpi)
{
	struct device *dev = &dpi->pdev->dev;
	struct drm_panel *panel;
	struct drm_bridge *bridge;
	int ret;

	ret = FUNC1(dev->of_node, 0, 0,
					  &panel, &bridge);
	if (ret) {
		/* If nothing was connected in the DT, that's not an
		 * error.
		 */
		if (ret == -ENODEV)
			return 0;
		else
			return ret;
	}

	if (panel)
		bridge = FUNC2(panel, DRM_MODE_CONNECTOR_DPI);

	return FUNC0(dpi->encoder, bridge, NULL);
}