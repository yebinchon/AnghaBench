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
struct msm_edp {int /*<<< orphan*/  encoder; int /*<<< orphan*/  dev; } ;
struct drm_connector {int interlace_allowed; int doublescan_allowed; int /*<<< orphan*/  polled; } ;
struct edp_connector {struct drm_connector base; struct msm_edp* edp; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_CONNECTOR_POLL_CONNECT ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_eDP ; 
 int ENOMEM ; 
 struct drm_connector* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  edp_connector_funcs ; 
 int /*<<< orphan*/  edp_connector_helper_funcs ; 
 struct edp_connector* FUNC4 (int,int /*<<< orphan*/ ) ; 

struct drm_connector *FUNC5(struct msm_edp *edp)
{
	struct drm_connector *connector = NULL;
	struct edp_connector *edp_connector;
	int ret;

	edp_connector = FUNC4(sizeof(*edp_connector), GFP_KERNEL);
	if (!edp_connector)
		return FUNC0(-ENOMEM);

	edp_connector->edp = edp;

	connector = &edp_connector->base;

	ret = FUNC3(edp->dev, connector, &edp_connector_funcs,
			DRM_MODE_CONNECTOR_eDP);
	if (ret)
		return FUNC0(ret);

	FUNC2(connector, &edp_connector_helper_funcs);

	/* We don't support HPD, so only poll status until connected. */
	connector->polled = DRM_CONNECTOR_POLL_CONNECT;

	/* Display driver doesn't support interlace now. */
	connector->interlace_allowed = false;
	connector->doublescan_allowed = false;

	FUNC1(connector, edp->encoder);

	return connector;
}