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
struct bmi160_data {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMI160_ACCEL ; 
 unsigned int BMI160_CHIP_ID_VAL ; 
 int /*<<< orphan*/  BMI160_CMD_SOFTRESET ; 
 int /*<<< orphan*/  BMI160_GYRO ; 
 int /*<<< orphan*/  BMI160_REG_CHIP_ID ; 
 int /*<<< orphan*/  BMI160_REG_CMD ; 
 int /*<<< orphan*/  BMI160_REG_DUMMY ; 
 scalar_t__ BMI160_SOFTRESET_USLEEP ; 
 int ENODEV ; 
 int FUNC0 (struct bmi160_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 struct device* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct bmi160_data *data, bool use_spi)
{
	int ret;
	unsigned int val;
	struct device *dev = FUNC2(data->regmap);

	ret = FUNC4(data->regmap, BMI160_REG_CMD, BMI160_CMD_SOFTRESET);
	if (ret)
		return ret;

	FUNC5(BMI160_SOFTRESET_USLEEP, BMI160_SOFTRESET_USLEEP + 1);

	/*
	 * CS rising edge is needed before starting SPI, so do a dummy read
	 * See Section 3.2.1, page 86 of the datasheet
	 */
	if (use_spi) {
		ret = FUNC3(data->regmap, BMI160_REG_DUMMY, &val);
		if (ret)
			return ret;
	}

	ret = FUNC3(data->regmap, BMI160_REG_CHIP_ID, &val);
	if (ret) {
		FUNC1(dev, "Error reading chip id\n");
		return ret;
	}
	if (val != BMI160_CHIP_ID_VAL) {
		FUNC1(dev, "Wrong chip id, got %x expected %x\n",
			val, BMI160_CHIP_ID_VAL);
		return -ENODEV;
	}

	ret = FUNC0(data, BMI160_ACCEL, true);
	if (ret)
		return ret;

	ret = FUNC0(data, BMI160_GYRO, true);
	if (ret)
		return ret;

	return 0;
}