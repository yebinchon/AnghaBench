#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct panel_drv_data {int /*<<< orphan*/  lock; TYPE_3__* pdev; struct omap_dss_device* src; } ;
struct omap_dss_device {TYPE_2__* ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* bus_unlock ) (struct omap_dss_device*) ;int /*<<< orphan*/  (* bus_lock ) (struct omap_dss_device*) ;} ;
struct TYPE_5__ {TYPE_1__ dsi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct panel_drv_data*,int) ; 
 int FUNC2 (struct panel_drv_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_dss_device*) ; 
 struct panel_drv_data* FUNC7 (struct omap_dss_device*) ; 

__attribute__((used)) static void FUNC8(struct omap_dss_device *dssdev)
{
	struct panel_drv_data *ddata = FUNC7(dssdev);
	struct omap_dss_device *src = ddata->src;
	int r;

	FUNC3(&ddata->lock);

	src->ops->dsi.bus_lock(src);

	r = FUNC2(ddata);

	src->ops->dsi.bus_unlock(src);

	if (r)
		goto err;

	FUNC4(&ddata->lock);

	FUNC1(ddata, true);

	return;
err:
	FUNC0(&ddata->pdev->dev, "enable failed (%d)\n", r);
	FUNC4(&ddata->lock);
}