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
struct TYPE_2__ {struct drm_property* hdr_output_metadata_property; struct drm_property* non_desktop_property; struct drm_property* link_status_property; struct drm_property* tile_property; struct drm_property* path_property; struct drm_property* dpms_property; struct drm_property* edid_property; } ;
struct drm_device {TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DRM_MODE_PROP_BLOB ; 
 int DRM_MODE_PROP_IMMUTABLE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  drm_dpms_enum_list ; 
 int /*<<< orphan*/  drm_link_status_enum_list ; 
 struct drm_property* FUNC1 (struct drm_device*,int,char*,int /*<<< orphan*/ ) ; 
 struct drm_property* FUNC2 (struct drm_device*,int,char*) ; 
 struct drm_property* FUNC3 (struct drm_device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct drm_device *dev)
{
	struct drm_property *prop;

	prop = FUNC1(dev, DRM_MODE_PROP_BLOB |
				   DRM_MODE_PROP_IMMUTABLE,
				   "EDID", 0);
	if (!prop)
		return -ENOMEM;
	dev->mode_config.edid_property = prop;

	prop = FUNC3(dev, 0,
				   "DPMS", drm_dpms_enum_list,
				   FUNC0(drm_dpms_enum_list));
	if (!prop)
		return -ENOMEM;
	dev->mode_config.dpms_property = prop;

	prop = FUNC1(dev,
				   DRM_MODE_PROP_BLOB |
				   DRM_MODE_PROP_IMMUTABLE,
				   "PATH", 0);
	if (!prop)
		return -ENOMEM;
	dev->mode_config.path_property = prop;

	prop = FUNC1(dev,
				   DRM_MODE_PROP_BLOB |
				   DRM_MODE_PROP_IMMUTABLE,
				   "TILE", 0);
	if (!prop)
		return -ENOMEM;
	dev->mode_config.tile_property = prop;

	prop = FUNC3(dev, 0, "link-status",
					drm_link_status_enum_list,
					FUNC0(drm_link_status_enum_list));
	if (!prop)
		return -ENOMEM;
	dev->mode_config.link_status_property = prop;

	prop = FUNC2(dev, DRM_MODE_PROP_IMMUTABLE, "non-desktop");
	if (!prop)
		return -ENOMEM;
	dev->mode_config.non_desktop_property = prop;

	prop = FUNC1(dev, DRM_MODE_PROP_BLOB,
				   "HDR_OUTPUT_METADATA", 0);
	if (!prop)
		return -ENOMEM;
	dev->mode_config.hdr_output_metadata_property = prop;

	return 0;
}