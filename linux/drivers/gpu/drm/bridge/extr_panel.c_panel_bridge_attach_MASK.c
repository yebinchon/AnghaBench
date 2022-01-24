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
struct drm_connector {int dummy; } ;
struct panel_bridge {struct drm_connector connector; int /*<<< orphan*/  panel; int /*<<< orphan*/  connector_type; } ;
struct drm_bridge {int /*<<< orphan*/  encoder; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENODEV ; 
 struct panel_bridge* FUNC1 (struct drm_bridge*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct drm_connector*) ; 
 int /*<<< orphan*/  panel_bridge_connector_funcs ; 
 int /*<<< orphan*/  panel_bridge_connector_helper_funcs ; 

__attribute__((used)) static int FUNC6(struct drm_bridge *bridge)
{
	struct panel_bridge *panel_bridge = FUNC1(bridge);
	struct drm_connector *connector = &panel_bridge->connector;
	int ret;

	if (!bridge->encoder) {
		FUNC0("Missing encoder\n");
		return -ENODEV;
	}

	FUNC3(connector,
				 &panel_bridge_connector_helper_funcs);

	ret = FUNC4(bridge->dev, connector,
				 &panel_bridge_connector_funcs,
				 panel_bridge->connector_type);
	if (ret) {
		FUNC0("Failed to initialize connector\n");
		return ret;
	}

	FUNC2(&panel_bridge->connector,
					  bridge->encoder);

	ret = FUNC5(panel_bridge->panel, &panel_bridge->connector);
	if (ret < 0)
		return ret;

	return 0;
}