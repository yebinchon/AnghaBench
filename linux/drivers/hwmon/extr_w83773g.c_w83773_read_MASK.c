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
typedef  int u32 ;
struct regmap {int dummy; } ;
struct device {int dummy; } ;
typedef  enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 struct regmap* FUNC0 (struct device*) ; 
 int FUNC1 (struct regmap*,int,long*) ; 
 int FUNC2 (struct regmap*,long*) ; 
 int FUNC3 (struct regmap*,int,long*) ; 
 int FUNC4 (struct regmap*,int,long*) ; 
 int FUNC5 (struct regmap*,long*) ; 
 int hwmon_chip ; 
 int hwmon_chip_update_interval ; 
#define  hwmon_temp_fault 130 
#define  hwmon_temp_input 129 
#define  hwmon_temp_offset 128 

__attribute__((used)) static int FUNC6(struct device *dev, enum hwmon_sensor_types type,
		       u32 attr, int channel, long *val)
{
	struct regmap *regmap = FUNC0(dev);

	if (type == hwmon_chip) {
		if (attr == hwmon_chip_update_interval)
			return FUNC5(regmap, val);
		return -EOPNOTSUPP;
	}

	switch (attr) {
	case hwmon_temp_input:
		if (channel == 0)
			return FUNC2(regmap, val);
		return FUNC4(regmap, channel - 1, val);
	case hwmon_temp_fault:
		return FUNC1(regmap, channel - 1, val);
	case hwmon_temp_offset:
		return FUNC3(regmap, channel - 1, val);
	default:
		return -EOPNOTSUPP;
	}
}