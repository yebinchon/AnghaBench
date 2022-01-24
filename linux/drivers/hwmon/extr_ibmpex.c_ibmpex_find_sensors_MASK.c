#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct ibmpex_bmc_data {int num_sensors; TYPE_5__* sensors; int /*<<< orphan*/  bmc_device; int /*<<< orphan*/  rx_msg_len; int /*<<< orphan*/  rx_msg_data; } ;
struct TYPE_9__ {TYPE_5__* name; } ;
struct TYPE_14__ {TYPE_1__ attr; } ;
struct TYPE_13__ {int multiplier; int in_use; TYPE_2__* attr; } ;
struct TYPE_12__ {TYPE_7__ dev_attr; } ;
struct TYPE_11__ {TYPE_7__ dev_attr; } ;
struct TYPE_10__ {TYPE_7__ dev_attr; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PEX_NUM_SENSOR_FUNCS ; 
 int POWER_SENSOR ; 
 int TEMP_SENSOR ; 
 int FUNC0 (struct ibmpex_bmc_data*,int,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 int FUNC3 (struct ibmpex_bmc_data*) ; 
 int FUNC4 (struct ibmpex_bmc_data*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int FUNC9 (struct ibmpex_bmc_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__ sensor_dev_attr_name ; 
 TYPE_3__ sensor_dev_attr_reset_high_low ; 

__attribute__((used)) static int FUNC10(struct ibmpex_bmc_data *data)
{
	int i, j, err;
	int sensor_type;
	int sensor_counter;
	int num_power = 0;
	int num_temp = 0;

	err = FUNC3(data);
	if (err <= 0)
		return -ENOENT;
	data->num_sensors = err;

	data->sensors = FUNC7(data->num_sensors, sizeof(*data->sensors),
				GFP_KERNEL);
	if (!data->sensors)
		return -ENOMEM;

	for (i = 0; i < data->num_sensors; i++) {
		err = FUNC4(data, i);
		if (err)
			continue;

		if (FUNC5(data->rx_msg_data, data->rx_msg_len)) {
			sensor_type = POWER_SENSOR;
			num_power++;
			sensor_counter = num_power;
			data->sensors[i].multiplier =
				FUNC9(data,
							data->rx_msg_data,
							data->rx_msg_len);
		} else if (FUNC6(data->rx_msg_data,
					  data->rx_msg_len)) {
			sensor_type = TEMP_SENSOR;
			num_temp++;
			sensor_counter = num_temp;
			data->sensors[i].multiplier = 1000;
		} else
			continue;

		data->sensors[i].in_use = 1;

		/* Create attributes */
		for (j = 0; j < PEX_NUM_SENSOR_FUNCS; j++) {
			err = FUNC0(data, sensor_type, sensor_counter,
					    i, j);
			if (err)
				goto exit_remove;
		}
	}

	err = FUNC1(data->bmc_device,
			&sensor_dev_attr_reset_high_low.dev_attr);
	if (err)
		goto exit_remove;

	err = FUNC1(data->bmc_device,
			&sensor_dev_attr_name.dev_attr);
	if (err)
		goto exit_remove;

	return 0;

exit_remove:
	FUNC2(data->bmc_device,
			   &sensor_dev_attr_reset_high_low.dev_attr);
	FUNC2(data->bmc_device, &sensor_dev_attr_name.dev_attr);
	for (i = 0; i < data->num_sensors; i++)
		for (j = 0; j < PEX_NUM_SENSOR_FUNCS; j++) {
			if (!data->sensors[i].attr[j].dev_attr.attr.name)
				continue;
			FUNC2(data->bmc_device,
				&data->sensors[i].attr[j].dev_attr);
			FUNC8(data->sensors[i].attr[j].dev_attr.attr.name);
		}

	FUNC8(data->sensors);
	return err;
}