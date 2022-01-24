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
struct max34440_data {int /*<<< orphan*/  id; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int ENODATA ; 
 int /*<<< orphan*/  MAX34440_MFR_IOUT_PEAK ; 
 int /*<<< orphan*/  MAX34440_MFR_TEMPERATURE_PEAK ; 
 int /*<<< orphan*/  MAX34440_MFR_VOUT_MIN ; 
 int /*<<< orphan*/  MAX34440_MFR_VOUT_PEAK ; 
 int /*<<< orphan*/  MAX34446_MFR_IOUT_AVG ; 
 int /*<<< orphan*/  MAX34446_MFR_POUT_AVG ; 
 int /*<<< orphan*/  MAX34446_MFR_POUT_PEAK ; 
 int /*<<< orphan*/  MAX34446_MFR_TEMPERATURE_AVG ; 
#define  PMBUS_VIRT_RESET_IOUT_HISTORY 131 
#define  PMBUS_VIRT_RESET_POUT_HISTORY 130 
#define  PMBUS_VIRT_RESET_TEMP_HISTORY 129 
#define  PMBUS_VIRT_RESET_VOUT_HISTORY 128 
 int /*<<< orphan*/  max34446 ; 
 int /*<<< orphan*/  max34451 ; 
 struct pmbus_driver_info* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*,int,int /*<<< orphan*/ ,int) ; 
 struct max34440_data* FUNC2 (struct pmbus_driver_info const*) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client, int page,
				    int reg, u16 word)
{
	const struct pmbus_driver_info *info = FUNC0(client);
	const struct max34440_data *data = FUNC2(info);
	int ret;

	switch (reg) {
	case PMBUS_VIRT_RESET_POUT_HISTORY:
		ret = FUNC1(client, page,
					    MAX34446_MFR_POUT_PEAK, 0);
		if (ret)
			break;
		ret = FUNC1(client, page,
					    MAX34446_MFR_POUT_AVG, 0);
		break;
	case PMBUS_VIRT_RESET_VOUT_HISTORY:
		ret = FUNC1(client, page,
					    MAX34440_MFR_VOUT_MIN, 0x7fff);
		if (ret)
			break;
		ret = FUNC1(client, page,
					    MAX34440_MFR_VOUT_PEAK, 0);
		break;
	case PMBUS_VIRT_RESET_IOUT_HISTORY:
		ret = FUNC1(client, page,
					    MAX34440_MFR_IOUT_PEAK, 0);
		if (!ret && (data->id == max34446 || data->id == max34451))
			ret = FUNC1(client, page,
					MAX34446_MFR_IOUT_AVG, 0);

		break;
	case PMBUS_VIRT_RESET_TEMP_HISTORY:
		ret = FUNC1(client, page,
					    MAX34440_MFR_TEMPERATURE_PEAK,
					    0x8000);
		if (!ret && data->id == max34446)
			ret = FUNC1(client, page,
					MAX34446_MFR_TEMPERATURE_AVG, 0);
		break;
	default:
		ret = -ENODATA;
		break;
	}
	return ret;
}