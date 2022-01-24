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
struct panel_drv_data {int ulps_enabled; scalar_t__ ext_te_gpio; TYPE_3__* pdev; int /*<<< orphan*/  channel; struct omap_dss_device* src; } ;
struct omap_dss_device {TYPE_2__* ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* enable_hs ) (struct omap_dss_device*,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_5__ {TYPE_1__ dsi; int /*<<< orphan*/  (* enable ) (struct omap_dss_device*) ;} ;

/* Variables and functions */
 int FUNC0 (struct panel_drv_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct panel_drv_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct panel_drv_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct omap_dss_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct panel_drv_data *ddata)
{
	struct omap_dss_device *src = ddata->src;
	int r;

	if (!ddata->ulps_enabled)
		return 0;

	src->ops->enable(src);
	src->ops->dsi.enable_hs(src, ddata->channel, true);

	r = FUNC0(ddata, true);
	if (r) {
		FUNC1(&ddata->pdev->dev, "failed to re-enable TE");
		goto err2;
	}

	if (ddata->ext_te_gpio)
		FUNC4(FUNC5(ddata->ext_te_gpio));

	FUNC3(ddata);

	ddata->ulps_enabled = false;

	return 0;

err2:
	FUNC1(&ddata->pdev->dev, "failed to exit ULPS");

	r = FUNC2(ddata);
	if (!r) {
		if (ddata->ext_te_gpio)
			FUNC4(FUNC5(ddata->ext_te_gpio));
		ddata->ulps_enabled = false;
	}

	FUNC3(ddata);

	return r;
}