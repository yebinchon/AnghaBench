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
struct panel_drv_data {int /*<<< orphan*/  ls_oe_gpio; int /*<<< orphan*/  ct_cp_hpd_gpio; } ;
struct omap_dss_device {int /*<<< orphan*/  next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_dss_device*,int /*<<< orphan*/ ) ; 
 struct panel_drv_data* FUNC2 (struct omap_dss_device*) ; 

__attribute__((used)) static void FUNC3(struct omap_dss_device *src,
			   struct omap_dss_device *dst)
{
	struct panel_drv_data *ddata = FUNC2(dst);

	FUNC0(ddata->ct_cp_hpd_gpio, 0);
	FUNC0(ddata->ls_oe_gpio, 0);

	FUNC1(dst, dst->next);
}