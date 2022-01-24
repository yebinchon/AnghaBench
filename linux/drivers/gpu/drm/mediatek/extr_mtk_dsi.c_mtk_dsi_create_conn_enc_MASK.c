#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int possible_crtcs; } ;
struct mtk_dsi {TYPE_1__ encoder; scalar_t__ bridge; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_DSI ; 
 int FUNC1 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct drm_device*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct drm_device*,struct mtk_dsi*) ; 
 int /*<<< orphan*/  mtk_dsi_encoder_funcs ; 
 int /*<<< orphan*/  mtk_dsi_encoder_helper_funcs ; 

__attribute__((used)) static int FUNC6(struct drm_device *drm, struct mtk_dsi *dsi)
{
	int ret;

	ret = FUNC4(drm, &dsi->encoder, &mtk_dsi_encoder_funcs,
			       DRM_MODE_ENCODER_DSI, NULL);
	if (ret) {
		FUNC0("Failed to encoder init to drm\n");
		return ret;
	}
	FUNC3(&dsi->encoder, &mtk_dsi_encoder_helper_funcs);

	/*
	 * Currently display data paths are statically assigned to a crtc each.
	 * crtc 0 is OVL0 -> COLOR0 -> AAL -> OD -> RDMA0 -> UFOE -> DSI0
	 */
	dsi->encoder.possible_crtcs = 1;

	/* If there's a bridge, attach to it and let it create the connector */
	if (dsi->bridge) {
		ret = FUNC1(&dsi->encoder, dsi->bridge, NULL);
		if (ret) {
			FUNC0("Failed to attach bridge to drm\n");
			goto err_encoder_cleanup;
		}
	} else {
		/* Otherwise create our own connector and attach to a panel */
		ret = FUNC5(drm, dsi);
		if (ret)
			goto err_encoder_cleanup;
	}

	return 0;

err_encoder_cleanup:
	FUNC2(&dsi->encoder);
	return ret;
}