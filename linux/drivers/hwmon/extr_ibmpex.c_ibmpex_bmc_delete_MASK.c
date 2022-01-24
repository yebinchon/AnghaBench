#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ibmpex_bmc_data {int num_sensors; struct ibmpex_bmc_data* sensors; int /*<<< orphan*/  user; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  bmc_device; int /*<<< orphan*/  list; TYPE_2__* attr; } ;
struct TYPE_6__ {struct ibmpex_bmc_data* name; } ;
struct TYPE_10__ {TYPE_1__ attr; } ;
struct TYPE_9__ {TYPE_5__ dev_attr; } ;
struct TYPE_8__ {TYPE_5__ dev_attr; } ;
struct TYPE_7__ {TYPE_5__ dev_attr; } ;

/* Variables and functions */
 int PEX_NUM_SENSOR_FUNCS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ibmpex_bmc_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_4__ sensor_dev_attr_name ; 
 TYPE_3__ sensor_dev_attr_reset_high_low ; 

__attribute__((used)) static void FUNC6(struct ibmpex_bmc_data *data)
{
	int i, j;

	FUNC1(data->bmc_device,
			   &sensor_dev_attr_reset_high_low.dev_attr);
	FUNC1(data->bmc_device, &sensor_dev_attr_name.dev_attr);
	for (i = 0; i < data->num_sensors; i++)
		for (j = 0; j < PEX_NUM_SENSOR_FUNCS; j++) {
			if (!data->sensors[i].attr[j].dev_attr.attr.name)
				continue;
			FUNC1(data->bmc_device,
				&data->sensors[i].attr[j].dev_attr);
			FUNC4(data->sensors[i].attr[j].dev_attr.attr.name);
		}

	FUNC5(&data->list);
	FUNC0(data->bmc_device, NULL);
	FUNC2(data->hwmon_dev);
	FUNC3(data->user);
	FUNC4(data->sensors);
	FUNC4(data);
}