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
struct exynos_dsi {int /*<<< orphan*/  dsi_host; scalar_t__ in_bridge_node; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_bridge {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_ENCODER_TMDS ; 
 int /*<<< orphan*/  EXYNOS_DISPLAY_TYPE_LCD ; 
 struct drm_encoder* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_encoder*,struct drm_bridge*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct exynos_dsi* FUNC4 (struct drm_encoder*) ; 
 int FUNC5 (struct drm_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exynos_dsi_encoder_funcs ; 
 int /*<<< orphan*/  exynos_dsi_encoder_helper_funcs ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 struct drm_bridge* FUNC7 (scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct device *dev, struct device *master,
				void *data)
{
	struct drm_encoder *encoder = FUNC0(dev);
	struct exynos_dsi *dsi = FUNC4(encoder);
	struct drm_device *drm_dev = data;
	struct drm_bridge *in_bridge;
	int ret;

	FUNC3(drm_dev, encoder, &exynos_dsi_encoder_funcs,
			 DRM_MODE_ENCODER_TMDS, NULL);

	FUNC2(encoder, &exynos_dsi_encoder_helper_funcs);

	ret = FUNC5(encoder, EXYNOS_DISPLAY_TYPE_LCD);
	if (ret < 0)
		return ret;

	if (dsi->in_bridge_node) {
		in_bridge = FUNC7(dsi->in_bridge_node);
		if (in_bridge)
			FUNC1(encoder, in_bridge, NULL);
	}

	return FUNC6(&dsi->dsi_host);
}