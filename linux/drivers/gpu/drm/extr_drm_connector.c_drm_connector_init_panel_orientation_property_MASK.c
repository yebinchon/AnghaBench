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
struct drm_property {int dummy; } ;
struct drm_display_info {int panel_orientation; } ;
struct TYPE_2__ {struct drm_property* panel_orientation_property; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_connector {int /*<<< orphan*/  base; struct drm_display_info display_info; struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DRM_MODE_PANEL_ORIENTATION_UNKNOWN ; 
 int /*<<< orphan*/  DRM_MODE_PROP_IMMUTABLE ; 
 int ENOMEM ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct drm_property*,int) ; 
 int /*<<< orphan*/  drm_panel_orientation_enum_list ; 
 struct drm_property* FUNC3 (struct drm_device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(
	struct drm_connector *connector, int width, int height)
{
	struct drm_device *dev = connector->dev;
	struct drm_display_info *info = &connector->display_info;
	struct drm_property *prop;
	int orientation_quirk;

	orientation_quirk = FUNC1(width, height);
	if (orientation_quirk != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
		info->panel_orientation = orientation_quirk;

	if (info->panel_orientation == DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
		return 0;

	prop = dev->mode_config.panel_orientation_property;
	if (!prop) {
		prop = FUNC3(dev, DRM_MODE_PROP_IMMUTABLE,
				"panel orientation",
				drm_panel_orientation_enum_list,
				FUNC0(drm_panel_orientation_enum_list));
		if (!prop)
			return -ENOMEM;

		dev->mode_config.panel_orientation_property = prop;
	}

	FUNC2(&connector->base, prop,
				   info->panel_orientation);
	return 0;
}