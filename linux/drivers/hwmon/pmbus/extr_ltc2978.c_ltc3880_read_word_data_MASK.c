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
struct ltc2978_data {int /*<<< orphan*/  temp2_max; int /*<<< orphan*/ * iout_max; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  LTC3880_MFR_IOUT_PEAK ; 
 int /*<<< orphan*/  LTC3880_MFR_TEMPERATURE2_PEAK ; 
#define  PMBUS_VIRT_READ_IOUT_MAX 134 
#define  PMBUS_VIRT_READ_TEMP2_MAX 133 
#define  PMBUS_VIRT_READ_TEMP_MIN 132 
#define  PMBUS_VIRT_READ_VIN_MIN 131 
#define  PMBUS_VIRT_READ_VOUT_MIN 130 
#define  PMBUS_VIRT_RESET_IOUT_HISTORY 129 
#define  PMBUS_VIRT_RESET_TEMP2_HISTORY 128 
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
	case PMBUS_VIRT_READ_IOUT_MAX:
		ret = FUNC1(data, client, page, LTC3880_MFR_IOUT_PEAK,
				  &data->iout_max[page]);
		break;
	case PMBUS_VIRT_READ_TEMP2_MAX:
		ret = FUNC1(data, client, page,
				  LTC3880_MFR_TEMPERATURE2_PEAK,
				  &data->temp2_max);
		break;
	case PMBUS_VIRT_READ_VIN_MIN:
	case PMBUS_VIRT_READ_VOUT_MIN:
	case PMBUS_VIRT_READ_TEMP_MIN:
		ret = -ENXIO;
		break;
	case PMBUS_VIRT_RESET_IOUT_HISTORY:
	case PMBUS_VIRT_RESET_TEMP2_HISTORY:
		ret = 0;
		break;
	default:
		ret = FUNC0(client, page, reg);
		break;
	}
	return ret;
}