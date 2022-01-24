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
struct omap_dss_device {int /*<<< orphan*/  next; int /*<<< orphan*/  dss; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct omap_dss_device*,int /*<<< orphan*/ ) ; 
 struct panel_drv_data* FUNC2 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct omap_dss_device *src,
		       struct omap_dss_device *dst)
{
	struct panel_drv_data *ddata = FUNC2(dst);
	int r;

	r = FUNC1(dst->dss, dst, dst->next);
	if (r)
		return r;

	FUNC0(ddata->ct_cp_hpd_gpio, 1);
	FUNC0(ddata->ls_oe_gpio, 1);

	/* DC-DC converter needs at max 300us to get to 90% of 5V */
	FUNC3(300);

	return 0;
}