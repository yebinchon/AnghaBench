#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct device {int dummy; } ;
struct bmc150_accel_data {int /*<<< orphan*/  regmap; } ;
typedef  enum bmc150_power_modes { ____Placeholder_bmc150_power_modes } bmc150_power_modes ;
struct TYPE_3__ {int sleep_dur; int reg_value; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int BMC150_ACCEL_PMU_BIT_SLEEP_DUR_SHIFT ; 
 int BMC150_ACCEL_PMU_MODE_SHIFT ; 
 int /*<<< orphan*/  BMC150_ACCEL_REG_PMU_LPW ; 
 int EINVAL ; 
 TYPE_1__* bmc150_accel_sleep_value_table ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct device* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct bmc150_accel_data *data,
				 enum bmc150_power_modes mode,
				 int dur_us)
{
	struct device *dev = FUNC3(data->regmap);
	int i;
	int ret;
	u8 lpw_bits;
	int dur_val = -1;

	if (dur_us > 0) {
		for (i = 0; i < FUNC0(bmc150_accel_sleep_value_table);
									 ++i) {
			if (bmc150_accel_sleep_value_table[i].sleep_dur ==
									dur_us)
				dur_val =
				bmc150_accel_sleep_value_table[i].reg_value;
		}
	} else {
		dur_val = 0;
	}

	if (dur_val < 0)
		return -EINVAL;

	lpw_bits = mode << BMC150_ACCEL_PMU_MODE_SHIFT;
	lpw_bits |= (dur_val << BMC150_ACCEL_PMU_BIT_SLEEP_DUR_SHIFT);

	FUNC1(dev, "Set Mode bits %x\n", lpw_bits);

	ret = FUNC4(data->regmap, BMC150_ACCEL_REG_PMU_LPW, lpw_bits);
	if (ret < 0) {
		FUNC2(dev, "Error writing reg_pmu_lpw\n");
		return ret;
	}

	return 0;
}