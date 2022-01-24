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
struct panel_drv_data {int ulps_enabled; TYPE_3__* pdev; scalar_t__ ext_te_gpio; struct omap_dss_device* src; } ;
struct omap_dss_device {TYPE_2__* ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* disable ) (struct omap_dss_device*,int,int) ;} ;
struct TYPE_5__ {TYPE_1__ dsi; } ;

/* Variables and functions */
 int FUNC0 (struct panel_drv_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct panel_drv_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct panel_drv_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct panel_drv_data*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct omap_dss_device*,int,int) ; 

__attribute__((used)) static int FUNC8(struct panel_drv_data *ddata)
{
	struct omap_dss_device *src = ddata->src;
	int r;

	if (ddata->ulps_enabled)
		return 0;

	FUNC3(ddata);

	r = FUNC0(ddata, false);
	if (r)
		goto err;

	if (ddata->ext_te_gpio)
		FUNC2(FUNC6(ddata->ext_te_gpio));

	src->ops->dsi.disable(src, false, true);

	ddata->ulps_enabled = true;

	return 0;

err:
	FUNC1(&ddata->pdev->dev, "enter ULPS failed");
	FUNC4(ddata);

	ddata->ulps_enabled = false;

	FUNC5(ddata);

	return r;
}