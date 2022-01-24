#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  polled; } ;
struct ps8622_bridge {TYPE_1__ connector; scalar_t__ panel; } ;
struct drm_bridge {int /*<<< orphan*/  encoder; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_CONNECTOR_POLL_HPD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_LVDS ; 
 int ENODEV ; 
 struct ps8622_bridge* FUNC1 (struct drm_bridge*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  ps8622_connector_funcs ; 
 int /*<<< orphan*/  ps8622_connector_helper_funcs ; 

__attribute__((used)) static int FUNC8(struct drm_bridge *bridge)
{
	struct ps8622_bridge *ps8622 = FUNC1(bridge);
	int ret;

	if (!bridge->encoder) {
		FUNC0("Parent encoder object not found");
		return -ENODEV;
	}

	ps8622->connector.polled = DRM_CONNECTOR_POLL_HPD;
	ret = FUNC4(bridge->dev, &ps8622->connector,
			&ps8622_connector_funcs, DRM_MODE_CONNECTOR_LVDS);
	if (ret) {
		FUNC0("Failed to initialize connector with drm\n");
		return ret;
	}
	FUNC3(&ps8622->connector,
					&ps8622_connector_helper_funcs);
	FUNC5(&ps8622->connector);
	FUNC2(&ps8622->connector,
							bridge->encoder);

	if (ps8622->panel)
		FUNC7(ps8622->panel, &ps8622->connector);

	FUNC6(ps8622->connector.dev);

	return ret;
}