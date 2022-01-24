#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int const u32 ;
struct drm_property {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_property* scaling_mode_property; int /*<<< orphan*/  base; struct drm_device* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 unsigned int const FUNC1 (int) ; 
 int /*<<< orphan*/  DRM_MODE_PROP_ENUM ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct drm_property*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct drm_property*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct drm_property* FUNC5 (struct drm_device*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,struct drm_property*) ; 
 TYPE_1__* drm_scaling_mode_enum_list ; 
 int FUNC7 (unsigned int const) ; 

int FUNC8(struct drm_connector *connector,
					       u32 scaling_mode_mask)
{
	struct drm_device *dev = connector->dev;
	struct drm_property *scaling_mode_property;
	int i;
	const unsigned valid_scaling_mode_mask =
		(1U << FUNC0(drm_scaling_mode_enum_list)) - 1;

	if (FUNC2(FUNC7(scaling_mode_mask) < 2 ||
		    scaling_mode_mask & ~valid_scaling_mode_mask))
		return -EINVAL;

	scaling_mode_property =
		FUNC5(dev, DRM_MODE_PROP_ENUM, "scaling mode",
				    FUNC7(scaling_mode_mask));

	if (!scaling_mode_property)
		return -ENOMEM;

	for (i = 0; i < FUNC0(drm_scaling_mode_enum_list); i++) {
		int ret;

		if (!(FUNC1(i) & scaling_mode_mask))
			continue;

		ret = FUNC4(scaling_mode_property,
					    drm_scaling_mode_enum_list[i].type,
					    drm_scaling_mode_enum_list[i].name);

		if (ret) {
			FUNC6(dev, scaling_mode_property);

			return ret;
		}
	}

	FUNC3(&connector->base,
				   scaling_mode_property, 0);

	connector->scaling_mode_property = scaling_mode_property;

	return 0;
}