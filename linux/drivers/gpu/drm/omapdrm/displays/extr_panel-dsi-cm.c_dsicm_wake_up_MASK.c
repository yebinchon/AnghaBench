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
struct panel_drv_data {scalar_t__ ulps_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct panel_drv_data*) ; 
 int FUNC1 (struct panel_drv_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct panel_drv_data*) ; 

__attribute__((used)) static int FUNC3(struct panel_drv_data *ddata)
{
	if (ddata->ulps_enabled)
		return FUNC1(ddata);

	FUNC0(ddata);
	FUNC2(ddata);
	return 0;
}