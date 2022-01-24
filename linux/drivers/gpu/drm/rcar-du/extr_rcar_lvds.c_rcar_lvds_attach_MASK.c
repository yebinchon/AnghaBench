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
struct rcar_lvds {int /*<<< orphan*/  panel; scalar_t__ next_bridge; struct drm_connector connector; } ;
struct drm_encoder {int dummy; } ;
struct drm_bridge {int /*<<< orphan*/  dev; struct drm_encoder* encoder; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_LVDS ; 
 struct rcar_lvds* FUNC0 (struct drm_bridge*) ; 
 int FUNC1 (struct drm_encoder*,scalar_t__,struct drm_bridge*) ; 
 int FUNC2 (struct drm_connector*,struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct drm_connector*) ; 
 int /*<<< orphan*/  rcar_lvds_conn_funcs ; 
 int /*<<< orphan*/  rcar_lvds_conn_helper_funcs ; 

__attribute__((used)) static int FUNC6(struct drm_bridge *bridge)
{
	struct rcar_lvds *lvds = FUNC0(bridge);
	struct drm_connector *connector = &lvds->connector;
	struct drm_encoder *encoder = bridge->encoder;
	int ret;

	/* If we have a next bridge just attach it. */
	if (lvds->next_bridge)
		return FUNC1(bridge->encoder, lvds->next_bridge,
					 bridge);

	/* Otherwise if we have a panel, create a connector. */
	if (!lvds->panel)
		return 0;

	ret = FUNC4(bridge->dev, connector, &rcar_lvds_conn_funcs,
				 DRM_MODE_CONNECTOR_LVDS);
	if (ret < 0)
		return ret;

	FUNC3(connector, &rcar_lvds_conn_helper_funcs);

	ret = FUNC2(connector, encoder);
	if (ret < 0)
		return ret;

	return FUNC5(lvds->panel, connector);
}