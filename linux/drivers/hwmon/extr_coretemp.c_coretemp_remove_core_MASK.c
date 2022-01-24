#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct temp_data {int /*<<< orphan*/  attr_group; } ;
struct platform_data {struct temp_data** core_data; TYPE_1__* hwmon_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct temp_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct platform_data *pdata, int indx)
{
	struct temp_data *tdata = pdata->core_data[indx];

	/* Remove the sysfs attributes */
	FUNC1(&pdata->hwmon_dev->kobj, &tdata->attr_group);

	FUNC0(pdata->core_data[indx]);
	pdata->core_data[indx] = NULL;
}