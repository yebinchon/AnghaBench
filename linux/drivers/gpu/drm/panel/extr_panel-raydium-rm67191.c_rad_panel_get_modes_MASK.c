#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct drm_panel {struct drm_connector* connector; int /*<<< orphan*/  dev; int /*<<< orphan*/  drm; } ;
struct drm_display_mode {int type; int /*<<< orphan*/  height_mm; int /*<<< orphan*/  width_mm; } ;
struct TYPE_5__ {int /*<<< orphan*/  bus_flags; int /*<<< orphan*/  height_mm; int /*<<< orphan*/  width_mm; } ;
struct drm_connector {TYPE_2__ display_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  vrefresh; int /*<<< orphan*/  vdisplay; int /*<<< orphan*/  hdisplay; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int DRM_MODE_TYPE_DRIVER ; 
 int DRM_MODE_TYPE_PREFERRED ; 
 int ENOMEM ; 
 TYPE_1__ default_mode ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct drm_display_mode* FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_display_mode*) ; 
 int /*<<< orphan*/  rad_bus_flags ; 
 int /*<<< orphan*/  rad_bus_formats ; 

__attribute__((used)) static int FUNC6(struct drm_panel *panel)
{
	struct drm_connector *connector = panel->connector;
	struct drm_display_mode *mode;

	mode = FUNC3(panel->drm, &default_mode);
	if (!mode) {
		FUNC1(panel->dev, "failed to add mode %ux%ux@%u\n",
			      default_mode.hdisplay, default_mode.vdisplay,
			      default_mode.vrefresh);
		return -ENOMEM;
	}

	FUNC5(mode);
	mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
	FUNC4(panel->connector, mode);

	connector->display_info.width_mm = mode->width_mm;
	connector->display_info.height_mm = mode->height_mm;
	connector->display_info.bus_flags = rad_bus_flags;

	FUNC2(&connector->display_info,
					 rad_bus_formats,
					 FUNC0(rad_bus_formats));
	return 1;
}