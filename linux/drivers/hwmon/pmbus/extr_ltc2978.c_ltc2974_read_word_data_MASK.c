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
struct pmbus_driver_info {int dummy; } ;
struct ltc2978_data {int /*<<< orphan*/ * iout_min; int /*<<< orphan*/ * iout_max; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LTC2974_MFR_IOUT_MIN ; 
 int /*<<< orphan*/  LTC2974_MFR_IOUT_PEAK ; 
#define  PMBUS_VIRT_READ_IOUT_MAX 130 
#define  PMBUS_VIRT_READ_IOUT_MIN 129 
#define  PMBUS_VIRT_RESET_IOUT_HISTORY 128 
 int FUNC0 (struct i2c_client*,int,int) ; 
 int FUNC1 (struct ltc2978_data*,struct i2c_client*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ltc2978_data*,struct i2c_client*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct pmbus_driver_info* FUNC3 (struct i2c_client*) ; 
 struct ltc2978_data* FUNC4 (struct pmbus_driver_info const*) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client, int page, int reg)
{
	const struct pmbus_driver_info *info = FUNC3(client);
	struct ltc2978_data *data = FUNC4(info);
	int ret;

	switch (reg) {
	case PMBUS_VIRT_READ_IOUT_MAX:
		ret = FUNC1(data, client, page, LTC2974_MFR_IOUT_PEAK,
				  &data->iout_max[page]);
		break;
	case PMBUS_VIRT_READ_IOUT_MIN:
		ret = FUNC2(data, client, page, LTC2974_MFR_IOUT_MIN,
				  &data->iout_min[page]);
		break;
	case PMBUS_VIRT_RESET_IOUT_HISTORY:
		ret = 0;
		break;
	default:
		ret = FUNC0(client, page, reg);
		break;
	}
	return ret;
}