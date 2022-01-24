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
struct imx_parallel_display {int /*<<< orphan*/  mode; int /*<<< orphan*/  bus_flags; scalar_t__ edid; int /*<<< orphan*/  panel; TYPE_1__* dev; } ;
struct drm_display_mode {int type; } ;
struct drm_connector {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;

/* Variables and functions */
 int DRM_MODE_TYPE_DRIVER ; 
 int DRM_MODE_TYPE_PREFERRED ; 
 int EINVAL ; 
 int /*<<< orphan*/  OF_USE_NATIVE_MODE ; 
 struct imx_parallel_display* FUNC0 (struct drm_connector*) ; 
 int FUNC1 (struct drm_connector*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_display_mode*,int /*<<< orphan*/ *) ; 
 struct drm_display_mode* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_connector*,struct drm_display_mode*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct drm_connector *connector)
{
	struct imx_parallel_display *imxpd = FUNC0(connector);
	struct device_node *np = imxpd->dev->of_node;
	int num_modes;

	num_modes = FUNC6(imxpd->panel);
	if (num_modes > 0)
		return num_modes;

	if (imxpd->edid) {
		FUNC2(connector, imxpd->edid);
		num_modes = FUNC1(connector, imxpd->edid);
	}

	if (np) {
		struct drm_display_mode *mode = FUNC4(connector->dev);
		int ret;

		if (!mode)
			return -EINVAL;

		ret = FUNC7(np, &imxpd->mode,
					      &imxpd->bus_flags,
					      OF_USE_NATIVE_MODE);
		if (ret)
			return ret;

		FUNC3(mode, &imxpd->mode);
		mode->type |= DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
		FUNC5(connector, mode);
		num_modes++;
	}

	return num_modes;
}