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
struct panel_drv_data {TYPE_3__* pdev; int /*<<< orphan*/  lock; struct omap_dss_device* src; } ;
struct omap_dss_device {TYPE_2__* ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* bus_unlock ) (struct omap_dss_device*) ;int /*<<< orphan*/  (* bus_lock ) (struct omap_dss_device*) ;} ;
struct TYPE_5__ {TYPE_1__ dsi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_dss_device*) ; 
 struct panel_drv_data* FUNC5 (struct omap_dss_device*) ; 

__attribute__((used)) static int FUNC6(struct omap_dss_device *dssdev)
{
	struct panel_drv_data *ddata = FUNC5(dssdev);
	struct omap_dss_device *src = ddata->src;

	FUNC0(&ddata->pdev->dev, "sync\n");

	FUNC1(&ddata->lock);
	src->ops->dsi.bus_lock(src);
	src->ops->dsi.bus_unlock(src);
	FUNC2(&ddata->lock);

	FUNC0(&ddata->pdev->dev, "sync done\n");

	return 0;
}