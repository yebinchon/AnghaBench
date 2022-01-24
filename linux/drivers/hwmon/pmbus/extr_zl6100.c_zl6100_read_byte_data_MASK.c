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
struct zl6100_data {int /*<<< orphan*/  access; } ;
struct pmbus_driver_info {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int PB_VOLTAGE_OV_FAULT ; 
 int PB_VOLTAGE_OV_WARNING ; 
 int PB_VOLTAGE_UV_FAULT ; 
 int PB_VOLTAGE_UV_WARNING ; 
 int PMBUS_STATUS_MFR_SPECIFIC ; 
#define  PMBUS_VIRT_STATUS_VMON 128 
 int VMON_OV_FAULT ; 
 int VMON_OV_WARNING ; 
 int VMON_UV_FAULT ; 
 int VMON_UV_WARNING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct pmbus_driver_info* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct i2c_client*,int,int) ; 
 struct zl6100_data* FUNC3 (struct pmbus_driver_info const*) ; 
 int /*<<< orphan*/  FUNC4 (struct zl6100_data*) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client, int page, int reg)
{
	const struct pmbus_driver_info *info = FUNC1(client);
	struct zl6100_data *data = FUNC3(info);
	int ret, status;

	if (page > 0)
		return -ENXIO;

	FUNC4(data);

	switch (reg) {
	case PMBUS_VIRT_STATUS_VMON:
		ret = FUNC2(client, 0,
					   PMBUS_STATUS_MFR_SPECIFIC);
		if (ret < 0)
			break;

		status = 0;
		if (ret & VMON_UV_WARNING)
			status |= PB_VOLTAGE_UV_WARNING;
		if (ret & VMON_OV_WARNING)
			status |= PB_VOLTAGE_OV_WARNING;
		if (ret & VMON_UV_FAULT)
			status |= PB_VOLTAGE_UV_FAULT;
		if (ret & VMON_OV_FAULT)
			status |= PB_VOLTAGE_OV_FAULT;
		ret = status;
		break;
	default:
		ret = FUNC2(client, page, reg);
		break;
	}
	data->access = FUNC0();

	return ret;
}