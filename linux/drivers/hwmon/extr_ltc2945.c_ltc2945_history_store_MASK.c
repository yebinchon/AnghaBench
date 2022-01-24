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
typedef  int u8 ;
struct sensor_device_attribute {int index; } ;
struct regmap {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL_TEST_MODE ; 
 int EINVAL ; 
 int /*<<< orphan*/  LTC2945_CONTROL ; 
 int LTC2945_MAX_ADIN_H ; 
 int LTC2945_MAX_POWER_H ; 
 int LTC2945_MAX_SENSE_H ; 
 int LTC2945_MAX_VIN_H ; 
#define  LTC2945_MIN_ADIN_H 131 
#define  LTC2945_MIN_POWER_H 130 
#define  LTC2945_MIN_SENSE_H 129 
#define  LTC2945_MIN_VIN_H 128 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 struct regmap* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 
 int FUNC4 (struct regmap*,int,int*,int) ; 
 int FUNC5 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sensor_device_attribute* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				     struct device_attribute *da,
				     const char *buf, size_t count)
{
	struct sensor_device_attribute *attr = FUNC6(da);
	struct regmap *regmap = FUNC1(dev);
	u8 reg = attr->index;
	int num_regs = FUNC2(reg) ? 3 : 2;
	u8 buf_min[3] = { 0xff, 0xff, 0xff };
	u8 buf_max[3] = { 0, 0, 0 };
	unsigned long val;
	int ret;

	ret = FUNC3(buf, 10, &val);
	if (ret)
		return ret;
	if (val != 1)
		return -EINVAL;

	ret = FUNC5(regmap, LTC2945_CONTROL, CONTROL_TEST_MODE,
				 CONTROL_TEST_MODE);

	/* Reset minimum */
	ret = FUNC4(regmap, reg, buf_min, num_regs);
	if (ret)
		return ret;

	switch (reg) {
	case LTC2945_MIN_POWER_H:
		reg = LTC2945_MAX_POWER_H;
		break;
	case LTC2945_MIN_SENSE_H:
		reg = LTC2945_MAX_SENSE_H;
		break;
	case LTC2945_MIN_VIN_H:
		reg = LTC2945_MAX_VIN_H;
		break;
	case LTC2945_MIN_ADIN_H:
		reg = LTC2945_MAX_ADIN_H;
		break;
	default:
		FUNC0(1, "Bad register: 0x%x\n", reg);
		return -EINVAL;
	}
	/* Reset maximum */
	ret = FUNC4(regmap, reg, buf_max, num_regs);

	/* Try resetting test mode even if there was an error */
	FUNC5(regmap, LTC2945_CONTROL, CONTROL_TEST_MODE, 0);

	return ret ? : count;
}