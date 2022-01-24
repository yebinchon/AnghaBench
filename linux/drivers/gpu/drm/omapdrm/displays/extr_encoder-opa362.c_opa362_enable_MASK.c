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
struct panel_drv_data {scalar_t__ enable_gpio; } ;
struct omap_dss_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 struct panel_drv_data* FUNC1 (struct omap_dss_device*) ; 

__attribute__((used)) static void FUNC2(struct omap_dss_device *dssdev)
{
	struct panel_drv_data *ddata = FUNC1(dssdev);

	if (ddata->enable_gpio)
		FUNC0(ddata->enable_gpio, 1);
}