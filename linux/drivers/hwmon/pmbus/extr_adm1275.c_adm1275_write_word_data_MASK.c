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
typedef  int /*<<< orphan*/  u16 ;
struct pmbus_driver_info {int dummy; } ;
struct i2c_client {int dummy; } ;
struct adm1275_data {int /*<<< orphan*/  have_power_sampling; int /*<<< orphan*/  have_pin_min; int /*<<< orphan*/  have_iout_min; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADM1275_IOUT_WARN2_LIMIT ; 
 int /*<<< orphan*/  ADM1275_PEAK_IOUT ; 
 int /*<<< orphan*/  ADM1275_PEAK_VIN ; 
 int /*<<< orphan*/  ADM1275_PEAK_VOUT ; 
 int /*<<< orphan*/  ADM1275_SAMPLES_AVG_MAX ; 
 int /*<<< orphan*/  ADM1276_PEAK_PIN ; 
 int /*<<< orphan*/  ADM1278_PEAK_TEMP ; 
 int /*<<< orphan*/  ADM1293_IOUT_MIN ; 
 int /*<<< orphan*/  ADM1293_PIN_MIN ; 
 int ENODATA ; 
 int ENXIO ; 
#define  PMBUS_IOUT_OC_FAULT_LIMIT 137 
#define  PMBUS_IOUT_UC_FAULT_LIMIT 136 
#define  PMBUS_VIRT_CURR_SAMPLES 135 
#define  PMBUS_VIRT_IN_SAMPLES 134 
#define  PMBUS_VIRT_POWER_SAMPLES 133 
#define  PMBUS_VIRT_RESET_IOUT_HISTORY 132 
#define  PMBUS_VIRT_RESET_PIN_HISTORY 131 
#define  PMBUS_VIRT_RESET_TEMP_HISTORY 130 
#define  PMBUS_VIRT_RESET_VIN_HISTORY 129 
#define  PMBUS_VIRT_RESET_VOUT_HISTORY 128 
 int FUNC0 (struct adm1275_data const*,struct i2c_client*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct pmbus_driver_info* FUNC3 (struct i2c_client*) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct adm1275_data* FUNC5 (struct pmbus_driver_info const*) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client, int page, int reg,
				   u16 word)
{
	const struct pmbus_driver_info *info = FUNC3(client);
	const struct adm1275_data *data = FUNC5(info);
	int ret;

	if (page > 0)
		return -ENXIO;

	switch (reg) {
	case PMBUS_IOUT_UC_FAULT_LIMIT:
	case PMBUS_IOUT_OC_FAULT_LIMIT:
		ret = FUNC4(client, 0, ADM1275_IOUT_WARN2_LIMIT,
					    word);
		break;
	case PMBUS_VIRT_RESET_IOUT_HISTORY:
		ret = FUNC4(client, 0, ADM1275_PEAK_IOUT, 0);
		if (!ret && data->have_iout_min)
			ret = FUNC4(client, 0,
						    ADM1293_IOUT_MIN, 0);
		break;
	case PMBUS_VIRT_RESET_VOUT_HISTORY:
		ret = FUNC4(client, 0, ADM1275_PEAK_VOUT, 0);
		break;
	case PMBUS_VIRT_RESET_VIN_HISTORY:
		ret = FUNC4(client, 0, ADM1275_PEAK_VIN, 0);
		break;
	case PMBUS_VIRT_RESET_PIN_HISTORY:
		ret = FUNC4(client, 0, ADM1276_PEAK_PIN, 0);
		if (!ret && data->have_pin_min)
			ret = FUNC4(client, 0,
						    ADM1293_PIN_MIN, 0);
		break;
	case PMBUS_VIRT_RESET_TEMP_HISTORY:
		ret = FUNC4(client, 0, ADM1278_PEAK_TEMP, 0);
		break;
	case PMBUS_VIRT_POWER_SAMPLES:
		if (!data->have_power_sampling)
			return -ENXIO;
		word = FUNC1(word, 1, ADM1275_SAMPLES_AVG_MAX);
		ret = FUNC0(data, client, true,
						FUNC2(word));
		break;
	case PMBUS_VIRT_IN_SAMPLES:
	case PMBUS_VIRT_CURR_SAMPLES:
		word = FUNC1(word, 1, ADM1275_SAMPLES_AVG_MAX);
		ret = FUNC0(data, client, false,
						FUNC2(word));
		break;
	default:
		ret = -ENODATA;
		break;
	}
	return ret;
}