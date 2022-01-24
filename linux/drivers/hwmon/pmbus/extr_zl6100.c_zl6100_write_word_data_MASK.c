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
struct zl6100_data {int /*<<< orphan*/  access; } ;
struct pmbus_driver_info {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int ENXIO ; 
 int MFR_VMON_OV_FAULT_LIMIT ; 
 int MFR_VMON_UV_FAULT_LIMIT ; 
 int PMBUS_VIRT_BASE ; 
#define  PMBUS_VIRT_VMON_OV_FAULT_LIMIT 131 
#define  PMBUS_VIRT_VMON_OV_WARN_LIMIT 130 
#define  PMBUS_VIRT_VMON_UV_FAULT_LIMIT 129 
#define  PMBUS_VIRT_VMON_UV_WARN_LIMIT 128 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*) ; 
 struct pmbus_driver_info* FUNC3 (struct i2c_client*) ; 
 int FUNC4 (struct i2c_client*,int,int,int /*<<< orphan*/ ) ; 
 struct zl6100_data* FUNC5 (struct pmbus_driver_info const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct zl6100_data*) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client, int page, int reg,
				  u16 word)
{
	const struct pmbus_driver_info *info = FUNC3(client);
	struct zl6100_data *data = FUNC5(info);
	int ret, vreg;

	if (page > 0)
		return -ENXIO;

	switch (reg) {
	case PMBUS_VIRT_VMON_OV_WARN_LIMIT:
		word = FUNC6(FUNC0(FUNC7(word) * 10, 9));
		vreg = MFR_VMON_OV_FAULT_LIMIT;
		FUNC2(client);
		break;
	case PMBUS_VIRT_VMON_OV_FAULT_LIMIT:
		vreg = MFR_VMON_OV_FAULT_LIMIT;
		FUNC2(client);
		break;
	case PMBUS_VIRT_VMON_UV_WARN_LIMIT:
		word = FUNC6(FUNC0(FUNC7(word) * 10, 11));
		vreg = MFR_VMON_UV_FAULT_LIMIT;
		FUNC2(client);
		break;
	case PMBUS_VIRT_VMON_UV_FAULT_LIMIT:
		vreg = MFR_VMON_UV_FAULT_LIMIT;
		FUNC2(client);
		break;
	default:
		if (reg >= PMBUS_VIRT_BASE)
			return -ENXIO;
		vreg = reg;
	}

	FUNC8(data);
	ret = FUNC4(client, page, vreg, word);
	data->access = FUNC1();

	return ret;
}