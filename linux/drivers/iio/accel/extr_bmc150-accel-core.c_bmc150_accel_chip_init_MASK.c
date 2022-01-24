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
struct device {int dummy; } ;
struct bmc150_accel_data {int range; int /*<<< orphan*/  regmap; int /*<<< orphan*/  slope_dur; int /*<<< orphan*/  slope_thres; TYPE_1__* chip_info; } ;
struct TYPE_3__ {unsigned int chip_id; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  BMC150_ACCEL_DEF_BW ; 
 int BMC150_ACCEL_DEF_RANGE_4G ; 
 int /*<<< orphan*/  BMC150_ACCEL_DEF_SLOPE_DURATION ; 
 int /*<<< orphan*/  BMC150_ACCEL_DEF_SLOPE_THRESHOLD ; 
 int BMC150_ACCEL_INT_MODE_LATCH_INT ; 
 int BMC150_ACCEL_INT_MODE_LATCH_RESET ; 
 int /*<<< orphan*/  BMC150_ACCEL_REG_CHIP_ID ; 
 int /*<<< orphan*/  BMC150_ACCEL_REG_INT_RST_LATCH ; 
 int /*<<< orphan*/  BMC150_ACCEL_REG_PMU_RANGE ; 
 int /*<<< orphan*/  BMC150_ACCEL_REG_RESET ; 
 int BMC150_ACCEL_RESET_VAL ; 
 int /*<<< orphan*/  BMC150_ACCEL_SLEEP_MODE_NORMAL ; 
 int ENODEV ; 
 TYPE_1__* bmc150_accel_chip_info_tbl ; 
 int FUNC1 (struct bmc150_accel_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bmc150_accel_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct bmc150_accel_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 struct device* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

__attribute__((used)) static int FUNC10(struct bmc150_accel_data *data)
{
	struct device *dev = FUNC6(data->regmap);
	int ret, i;
	unsigned int val;

	/*
	 * Reset chip to get it in a known good state. A delay of 1.8ms after
	 * reset is required according to the data sheets of supported chips.
	 */
	FUNC8(data->regmap, BMC150_ACCEL_REG_RESET,
		     BMC150_ACCEL_RESET_VAL);
	FUNC9(1800, 2500);

	ret = FUNC7(data->regmap, BMC150_ACCEL_REG_CHIP_ID, &val);
	if (ret < 0) {
		FUNC5(dev, "Error: Reading chip id\n");
		return ret;
	}

	FUNC4(dev, "Chip Id %x\n", val);
	for (i = 0; i < FUNC0(bmc150_accel_chip_info_tbl); i++) {
		if (bmc150_accel_chip_info_tbl[i].chip_id == val) {
			data->chip_info = &bmc150_accel_chip_info_tbl[i];
			break;
		}
	}

	if (!data->chip_info) {
		FUNC5(dev, "Invalid chip %x\n", val);
		return -ENODEV;
	}

	ret = FUNC2(data, BMC150_ACCEL_SLEEP_MODE_NORMAL, 0);
	if (ret < 0)
		return ret;

	/* Set Bandwidth */
	ret = FUNC1(data, BMC150_ACCEL_DEF_BW, 0);
	if (ret < 0)
		return ret;

	/* Set Default Range */
	ret = FUNC8(data->regmap, BMC150_ACCEL_REG_PMU_RANGE,
			   BMC150_ACCEL_DEF_RANGE_4G);
	if (ret < 0) {
		FUNC5(dev, "Error writing reg_pmu_range\n");
		return ret;
	}

	data->range = BMC150_ACCEL_DEF_RANGE_4G;

	/* Set default slope duration and thresholds */
	data->slope_thres = BMC150_ACCEL_DEF_SLOPE_THRESHOLD;
	data->slope_dur = BMC150_ACCEL_DEF_SLOPE_DURATION;
	ret = FUNC3(data);
	if (ret < 0)
		return ret;

	/* Set default as latched interrupts */
	ret = FUNC8(data->regmap, BMC150_ACCEL_REG_INT_RST_LATCH,
			   BMC150_ACCEL_INT_MODE_LATCH_INT |
			   BMC150_ACCEL_INT_MODE_LATCH_RESET);
	if (ret < 0) {
		FUNC5(dev, "Error writing reg_int_rst_latch\n");
		return ret;
	}

	return 0;
}