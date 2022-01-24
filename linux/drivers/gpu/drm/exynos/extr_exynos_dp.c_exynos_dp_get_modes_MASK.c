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
struct TYPE_4__ {scalar_t__ panel; } ;
struct exynos_dp_device {int /*<<< orphan*/  vm; int /*<<< orphan*/  dev; TYPE_2__ plat_data; } ;
struct drm_display_mode {int type; int /*<<< orphan*/  height_mm; int /*<<< orphan*/  width_mm; } ;
struct TYPE_3__ {int /*<<< orphan*/  height_mm; int /*<<< orphan*/  width_mm; } ;
struct drm_connector {TYPE_1__ display_info; int /*<<< orphan*/  dev; } ;
struct analogix_dp_plat_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int DRM_MODE_TYPE_DRIVER ; 
 int DRM_MODE_TYPE_PREFERRED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct drm_display_mode*) ; 
 struct drm_display_mode* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_display_mode*) ; 
 struct exynos_dp_device* FUNC5 (struct analogix_dp_plat_data*) ; 

__attribute__((used)) static int FUNC6(struct analogix_dp_plat_data *plat_data,
			       struct drm_connector *connector)
{
	struct exynos_dp_device *dp = FUNC5(plat_data);
	struct drm_display_mode *mode;
	int num_modes = 0;

	if (dp->plat_data.panel)
		return num_modes;

	mode = FUNC2(connector->dev);
	if (!mode) {
		FUNC0(dp->dev,
			      "failed to create a new display mode.\n");
		return num_modes;
	}

	FUNC1(&dp->vm, mode);
	connector->display_info.width_mm = mode->width_mm;
	connector->display_info.height_mm = mode->height_mm;

	mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
	FUNC4(mode);
	FUNC3(connector, mode);

	return num_modes + 1;
}