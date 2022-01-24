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
struct panel_drv_data {int /*<<< orphan*/  vm; int /*<<< orphan*/  height_mm; int /*<<< orphan*/  width_mm; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  height_mm; int /*<<< orphan*/  width_mm; } ;
struct drm_connector {TYPE_1__ display_info; } ;

/* Variables and functions */
 int FUNC0 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 struct panel_drv_data* FUNC1 (struct omap_dss_device*) ; 

__attribute__((used)) static int FUNC2(struct omap_dss_device *dssdev,
			   struct drm_connector *connector)
{
	struct panel_drv_data *ddata = FUNC1(dssdev);

	connector->display_info.width_mm = ddata->width_mm;
	connector->display_info.height_mm = ddata->height_mm;

	return FUNC0(connector, &ddata->vm);
}