#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_6__ {int /*<<< orphan*/  vactive; int /*<<< orphan*/  hactive; } ;
struct panel_drv_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  channel; int /*<<< orphan*/  do_update; int /*<<< orphan*/  te_timeout_work; scalar_t__ ext_te_gpio; scalar_t__ te_enabled; TYPE_2__ vm; int /*<<< orphan*/  enabled; TYPE_1__* pdev; struct omap_dss_device* src; } ;
struct omap_dss_device {TYPE_4__* ops; } ;
struct TYPE_7__ {int (* update ) (struct omap_dss_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct panel_drv_data*) ;int /*<<< orphan*/  (* bus_unlock ) (struct omap_dss_device*) ;int /*<<< orphan*/  (* bus_lock ) (struct omap_dss_device*) ;} ;
struct TYPE_8__ {TYPE_3__ dsi; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dsicm_framedone_cb ; 
 int FUNC2 (struct panel_drv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct panel_drv_data*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct omap_dss_device*) ; 
 int FUNC9 (struct omap_dss_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct panel_drv_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct omap_dss_device*) ; 
 struct panel_drv_data* FUNC11 (struct omap_dss_device*) ; 

__attribute__((used)) static int FUNC12(struct omap_dss_device *dssdev,
				    u16 x, u16 y, u16 w, u16 h)
{
	struct panel_drv_data *ddata = FUNC11(dssdev);
	struct omap_dss_device *src = ddata->src;
	int r;

	FUNC1(&ddata->pdev->dev, "update %d, %d, %d x %d\n", x, y, w, h);

	FUNC5(&ddata->lock);
	src->ops->dsi.bus_lock(src);

	r = FUNC3(ddata);
	if (r)
		goto err;

	if (!ddata->enabled) {
		r = 0;
		goto err;
	}

	/* XXX no need to send this every frame, but dsi break if not done */
	r = FUNC2(ddata, 0, 0, ddata->vm.hactive,
				    ddata->vm.vactive);
	if (r)
		goto err;

	if (ddata->te_enabled && ddata->ext_te_gpio) {
		FUNC7(&ddata->te_timeout_work,
				FUNC4(250));
		FUNC0(&ddata->do_update, 1);
	} else {
		r = src->ops->dsi.update(src, ddata->channel, dsicm_framedone_cb,
				ddata);
		if (r)
			goto err;
	}

	/* note: no bus_unlock here. unlock is src framedone_cb */
	FUNC6(&ddata->lock);
	return 0;
err:
	src->ops->dsi.bus_unlock(src);
	FUNC6(&ddata->lock);
	return r;
}