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
struct drm_encoder {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_TMDS ; 
 int /*<<< orphan*/  EXYNOS_DISPLAY_TYPE_LCD ; 
 int /*<<< orphan*/  FUNC1 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (struct drm_encoder*) ; 
 int FUNC5 (struct drm_encoder*) ; 
 int /*<<< orphan*/  exynos_dpi_encoder_funcs ; 
 int /*<<< orphan*/  exynos_dpi_encoder_helper_funcs ; 
 int FUNC6 (struct drm_encoder*,int /*<<< orphan*/ ) ; 

int FUNC7(struct drm_device *dev, struct drm_encoder *encoder)
{
	int ret;

	FUNC3(dev, encoder, &exynos_dpi_encoder_funcs,
			 DRM_MODE_ENCODER_TMDS, NULL);

	FUNC2(encoder, &exynos_dpi_encoder_helper_funcs);

	ret = FUNC6(encoder, EXYNOS_DISPLAY_TYPE_LCD);
	if (ret < 0)
		return ret;

	ret = FUNC5(encoder);
	if (ret) {
		FUNC0(FUNC4(encoder)->dev,
			      "failed to create connector ret = %d\n", ret);
		FUNC1(encoder);
		return ret;
	}

	return 0;
}