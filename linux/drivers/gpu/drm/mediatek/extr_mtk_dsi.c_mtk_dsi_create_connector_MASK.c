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
struct TYPE_6__ {int /*<<< orphan*/  dpms; } ;
struct mtk_dsi {TYPE_1__ conn; scalar_t__ panel; int /*<<< orphan*/  encoder; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_DSI ; 
 int /*<<< orphan*/  DRM_MODE_DPMS_OFF ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct drm_device*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  mtk_dsi_connector_funcs ; 
 int /*<<< orphan*/  mtk_dsi_connector_helper_funcs ; 

__attribute__((used)) static int FUNC6(struct drm_device *drm, struct mtk_dsi *dsi)
{
	int ret;

	ret = FUNC4(drm, &dsi->conn, &mtk_dsi_connector_funcs,
				 DRM_MODE_CONNECTOR_DSI);
	if (ret) {
		FUNC0("Failed to connector init to drm\n");
		return ret;
	}

	FUNC3(&dsi->conn, &mtk_dsi_connector_helper_funcs);

	dsi->conn.dpms = DRM_MODE_DPMS_OFF;
	FUNC1(&dsi->conn, &dsi->encoder);

	if (dsi->panel) {
		ret = FUNC5(dsi->panel, &dsi->conn);
		if (ret) {
			FUNC0("Failed to attach panel to drm\n");
			goto err_connector_cleanup;
		}
	}

	return 0;

err_connector_cleanup:
	FUNC2(&dsi->conn);
	return ret;
}