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
struct drm_panel {int /*<<< orphan*/  drm; struct drm_connector* connector; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_4__ {int bus_flags; int /*<<< orphan*/  height_mm; int /*<<< orphan*/  width_mm; } ;
struct drm_connector {TYPE_1__ display_info; } ;
struct TYPE_5__ {int /*<<< orphan*/  height_mm; int /*<<< orphan*/  width_mm; } ;

/* Variables and functions */
 int DRM_BUS_FLAG_DE_HIGH ; 
 int DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE ; 
 int DRM_BUS_FLAG_SYNC_SAMPLE_POSEDGE ; 
 int ENOMEM ; 
 TYPE_2__ acx565akm_mode ; 
 struct drm_display_mode* FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_display_mode*) ; 

__attribute__((used)) static int FUNC3(struct drm_panel *panel)
{
	struct drm_connector *connector = panel->connector;
	struct drm_display_mode *mode;

	mode = FUNC0(panel->drm, &acx565akm_mode);
	if (!mode)
		return -ENOMEM;

	FUNC2(mode);
	FUNC1(connector, mode);

	connector->display_info.width_mm = acx565akm_mode.width_mm;
	connector->display_info.height_mm = acx565akm_mode.height_mm;
	connector->display_info.bus_flags = DRM_BUS_FLAG_DE_HIGH
					  | DRM_BUS_FLAG_SYNC_SAMPLE_POSEDGE
					  | DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE;

	return 1;
}