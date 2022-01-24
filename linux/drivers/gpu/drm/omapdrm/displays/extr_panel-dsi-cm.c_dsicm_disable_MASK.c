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
struct panel_drv_data {int /*<<< orphan*/  lock; struct omap_dss_device* src; } ;
struct omap_dss_device {TYPE_2__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* bus_unlock ) (struct omap_dss_device*) ;int /*<<< orphan*/  (* bus_lock ) (struct omap_dss_device*) ;} ;
struct TYPE_4__ {TYPE_1__ dsi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct panel_drv_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct panel_drv_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct panel_drv_data*) ; 
 int FUNC3 (struct panel_drv_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct omap_dss_device*) ; 
 struct panel_drv_data* FUNC8 (struct omap_dss_device*) ; 

__attribute__((used)) static void FUNC9(struct omap_dss_device *dssdev)
{
	struct panel_drv_data *ddata = FUNC8(dssdev);
	struct omap_dss_device *src = ddata->src;
	int r;

	FUNC0(ddata, false);

	FUNC4(&ddata->lock);

	FUNC1(ddata);

	src->ops->dsi.bus_lock(src);

	r = FUNC3(ddata);
	if (!r)
		FUNC2(ddata);

	src->ops->dsi.bus_unlock(src);

	FUNC5(&ddata->lock);
}