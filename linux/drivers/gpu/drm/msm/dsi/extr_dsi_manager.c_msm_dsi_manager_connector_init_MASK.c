#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct msm_dsi {int /*<<< orphan*/  connector; TYPE_2__* dev; int /*<<< orphan*/  encoder; } ;
struct drm_connector {TYPE_1__* funcs; scalar_t__ doublescan_allowed; scalar_t__ interlace_allowed; int /*<<< orphan*/  polled; } ;
struct dsi_connector {struct drm_connector base; int /*<<< orphan*/  id; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* destroy ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_CONNECTOR_POLL_HPD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_DSI ; 
 int ENOMEM ; 
 struct drm_connector* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__*,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dsi_mgr_conn_helper_funcs ; 
 int /*<<< orphan*/  dsi_mgr_connector_funcs ; 
 struct msm_dsi* FUNC5 (int /*<<< orphan*/ ) ; 
 struct dsi_connector* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

struct drm_connector *FUNC9(u8 id)
{
	struct msm_dsi *msm_dsi = FUNC5(id);
	struct drm_connector *connector = NULL;
	struct dsi_connector *dsi_connector;
	int ret;

	dsi_connector = FUNC6(sizeof(*dsi_connector), GFP_KERNEL);
	if (!dsi_connector)
		return FUNC1(-ENOMEM);

	dsi_connector->id = id;

	connector = &dsi_connector->base;

	ret = FUNC4(msm_dsi->dev, connector,
			&dsi_mgr_connector_funcs, DRM_MODE_CONNECTOR_DSI);
	if (ret)
		return FUNC1(ret);

	FUNC3(connector, &dsi_mgr_conn_helper_funcs);

	/* Enable HPD to let hpd event is handled
	 * when panel is attached to the host.
	 */
	connector->polled = DRM_CONNECTOR_POLL_HPD;

	/* Display driver doesn't support interlace now. */
	connector->interlace_allowed = 0;
	connector->doublescan_allowed = 0;

	FUNC2(connector, msm_dsi->encoder);

	ret = FUNC7(connector, id);
	if (ret) {
		FUNC0(msm_dsi->dev->dev, "init panel failed %d\n", ret);
		goto fail;
	}

	return connector;

fail:
	connector->funcs->destroy(msm_dsi->connector);
	return FUNC1(ret);
}