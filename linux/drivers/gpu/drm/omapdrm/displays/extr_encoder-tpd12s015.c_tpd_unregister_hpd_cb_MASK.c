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
struct panel_drv_data {int /*<<< orphan*/  hpd_lock; int /*<<< orphan*/ * hpd_cb_data; int /*<<< orphan*/ * hpd_cb; } ;
struct omap_dss_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct panel_drv_data* FUNC2 (struct omap_dss_device*) ; 

__attribute__((used)) static void FUNC3(struct omap_dss_device *dssdev)
{
	struct panel_drv_data *ddata = FUNC2(dssdev);

	FUNC0(&ddata->hpd_lock);
	ddata->hpd_cb = NULL;
	ddata->hpd_cb_data = NULL;
	FUNC1(&ddata->hpd_lock);
}