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
struct drm_connector {TYPE_1__* funcs; int /*<<< orphan*/  status; int /*<<< orphan*/  polled; } ;
struct exynos_dsi {int /*<<< orphan*/  dev; struct drm_connector connector; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  fb_helper; int /*<<< orphan*/  registered; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* reset ) (struct drm_connector*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_CONNECTOR_POLL_HPD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_DSI ; 
 int /*<<< orphan*/  connector_status_disconnected ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct drm_device*,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct drm_connector*) ; 
 struct exynos_dsi* FUNC6 (struct drm_encoder*) ; 
 int /*<<< orphan*/  exynos_dsi_connector_funcs ; 
 int /*<<< orphan*/  exynos_dsi_connector_helper_funcs ; 
 int /*<<< orphan*/  FUNC7 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC8(struct drm_encoder *encoder)
{
	struct exynos_dsi *dsi = FUNC6(encoder);
	struct drm_connector *connector = &dsi->connector;
	struct drm_device *drm = encoder->dev;
	int ret;

	connector->polled = DRM_CONNECTOR_POLL_HPD;

	ret = FUNC3(drm, connector, &exynos_dsi_connector_funcs,
				 DRM_MODE_CONNECTOR_DSI);
	if (ret) {
		FUNC0(dsi->dev,
			      "Failed to initialize connector with drm\n");
		return ret;
	}

	connector->status = connector_status_disconnected;
	FUNC2(connector, &exynos_dsi_connector_helper_funcs);
	FUNC1(connector, encoder);
	if (!drm->registered)
		return 0;

	connector->funcs->reset(connector);
	FUNC5(drm->fb_helper, connector);
	FUNC4(connector);
	return 0;
}