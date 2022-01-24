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
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 struct regmap* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 
 int FUNC4 (struct device*,int,unsigned long) ; 
 int FUNC5 (struct regmap*,int,int*,int) ; 
 struct sensor_device_attribute* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				   struct device_attribute *da,
				   const char *buf, size_t count)
{
	struct sensor_device_attribute *attr = FUNC6(da);
	struct regmap *regmap = FUNC1(dev);
	u8 reg = attr->index;
	unsigned long val;
	u8 regbuf[3];
	int num_regs;
	int regval;
	int ret;

	ret = FUNC3(buf, 10, &val);
	if (ret)
		return ret;

	/* convert to register value, then clamp and write result */
	regval = FUNC4(dev, reg, val);
	if (FUNC2(reg)) {
		regval = FUNC0(regval, 0, 0xffffff);
		regbuf[0] = regval >> 16;
		regbuf[1] = (regval >> 8) & 0xff;
		regbuf[2] = regval;
		num_regs = 3;
	} else {
		regval = FUNC0(regval, 0, 0xfff) << 4;
		regbuf[0] = regval >> 8;
		regbuf[1] = regval & 0xff;
		num_regs = 2;
	}
	ret = FUNC5(regmap, reg, regbuf, num_regs);
	return ret < 0 ? ret : count;
}