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
struct device {int dummy; } ;
struct bmg160_data {int dps_range; unsigned int slope_thres; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 unsigned int BMG160_CHIP_ID_VAL ; 
 int /*<<< orphan*/  BMG160_DEF_BW ; 
 int /*<<< orphan*/  BMG160_GYRO_REG_RESET ; 
 int BMG160_GYRO_RESET_VAL ; 
 int /*<<< orphan*/  BMG160_INT1_BIT_OD ; 
 int BMG160_INT_MODE_LATCH_INT ; 
 int BMG160_INT_MODE_LATCH_RESET ; 
 int /*<<< orphan*/  BMG160_MODE_NORMAL ; 
 int BMG160_RANGE_500DPS ; 
 int /*<<< orphan*/  BMG160_REG_CHIP_ID ; 
 int /*<<< orphan*/  BMG160_REG_INT_EN_1 ; 
 int /*<<< orphan*/  BMG160_REG_INT_RST_LATCH ; 
 int /*<<< orphan*/  BMG160_REG_RANGE ; 
 int /*<<< orphan*/  BMG160_REG_SLOPE_THRES ; 
 int ENODEV ; 
 int FUNC0 (struct bmg160_data*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bmg160_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 struct device* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

__attribute__((used)) static int FUNC9(struct bmg160_data *data)
{
	struct device *dev = FUNC4(data->regmap);
	int ret;
	unsigned int val;

	/*
	 * Reset chip to get it in a known good state. A delay of 30ms after
	 * reset is required according to the datasheet.
	 */
	FUNC7(data->regmap, BMG160_GYRO_REG_RESET,
		     BMG160_GYRO_RESET_VAL);
	FUNC8(30000, 30700);

	ret = FUNC5(data->regmap, BMG160_REG_CHIP_ID, &val);
	if (ret < 0) {
		FUNC3(dev, "Error reading reg_chip_id\n");
		return ret;
	}

	FUNC2(dev, "Chip Id %x\n", val);
	if (val != BMG160_CHIP_ID_VAL) {
		FUNC3(dev, "invalid chip %x\n", val);
		return -ENODEV;
	}

	ret = FUNC1(data, BMG160_MODE_NORMAL);
	if (ret < 0)
		return ret;

	/* Wait upto 500 ms to be ready after changing mode */
	FUNC8(500, 1000);

	/* Set Bandwidth */
	ret = FUNC0(data, BMG160_DEF_BW);
	if (ret < 0)
		return ret;

	/* Set Default Range */
	ret = FUNC7(data->regmap, BMG160_REG_RANGE, BMG160_RANGE_500DPS);
	if (ret < 0) {
		FUNC3(dev, "Error writing reg_range\n");
		return ret;
	}
	data->dps_range = BMG160_RANGE_500DPS;

	ret = FUNC5(data->regmap, BMG160_REG_SLOPE_THRES, &val);
	if (ret < 0) {
		FUNC3(dev, "Error reading reg_slope_thres\n");
		return ret;
	}
	data->slope_thres = val;

	/* Set default interrupt mode */
	ret = FUNC6(data->regmap, BMG160_REG_INT_EN_1,
				 BMG160_INT1_BIT_OD, 0);
	if (ret < 0) {
		FUNC3(dev, "Error updating bits in reg_int_en_1\n");
		return ret;
	}

	ret = FUNC7(data->regmap, BMG160_REG_INT_RST_LATCH,
			   BMG160_INT_MODE_LATCH_INT |
			   BMG160_INT_MODE_LATCH_RESET);
	if (ret < 0) {
		FUNC3(dev,
			"Error writing reg_motion_intr\n");
		return ret;
	}

	return 0;
}