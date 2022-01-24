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
struct ltc2978_data {int /*<<< orphan*/  iin_max; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LTC3883_MFR_IIN_PEAK ; 
#define  PMBUS_VIRT_READ_IIN_MAX 129 
#define  PMBUS_VIRT_RESET_IIN_HISTORY 128 
 int FUNC0 (struct i2c_client*,int,int) ; 
 int FUNC1 (struct ltc2978_data*,struct i2c_client*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct pmbus_driver_info* FUNC2 (struct i2c_client*) ; 
 struct ltc2978_data* FUNC3 (struct pmbus_driver_info const*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client, int page, int reg)
{
	const struct pmbus_driver_info *info = FUNC2(client);
	struct ltc2978_data *data = FUNC3(info);
	int ret;

	switch (reg) {
	case PMBUS_VIRT_READ_IIN_MAX:
		ret = FUNC1(data, client, page, LTC3883_MFR_IIN_PEAK,
				  &data->iin_max);
		break;
	case PMBUS_VIRT_RESET_IIN_HISTORY:
		ret = 0;
		break;
	default:
		ret = FUNC0(client, page, reg);
		break;
	}
	return ret;
}