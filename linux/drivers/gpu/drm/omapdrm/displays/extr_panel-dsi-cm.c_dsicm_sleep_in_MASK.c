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
typedef  int /*<<< orphan*/  u8 ;
struct panel_drv_data {int /*<<< orphan*/  channel; struct omap_dss_device* src; } ;
struct omap_dss_device {TYPE_2__* ops; } ;
struct TYPE_3__ {int (* dcs_write_nosync ) (struct omap_dss_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ;} ;
struct TYPE_4__ {TYPE_1__ dsi; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPI_DCS_ENTER_SLEEP_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct panel_drv_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct panel_drv_data*) ; 
 int FUNC2 (struct omap_dss_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct panel_drv_data *ddata)

{
	struct omap_dss_device *src = ddata->src;
	u8 cmd;
	int r;

	FUNC1(ddata);

	cmd = MIPI_DCS_ENTER_SLEEP_MODE;
	r = src->ops->dsi.dcs_write_nosync(src, ddata->channel, &cmd, 1);
	if (r)
		return r;

	FUNC0(ddata, 120);

	FUNC3(5000, 10000);

	return 0;
}