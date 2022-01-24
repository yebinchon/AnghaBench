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
struct tmp102 {int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;
typedef  enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int TMP102_THIGH_REG ; 
 int TMP102_TLOW_REG ; 
 long FUNC0 (long,int,int) ; 
 struct tmp102* FUNC1 (struct device*) ; 
#define  hwmon_temp_max 129 
#define  hwmon_temp_max_hyst 128 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (long) ; 

__attribute__((used)) static int FUNC4(struct device *dev, enum hwmon_sensor_types type,
			u32 attr, int channel, long temp)
{
	struct tmp102 *tmp102 = FUNC1(dev);
	int reg;

	switch (attr) {
	case hwmon_temp_max_hyst:
		reg = TMP102_TLOW_REG;
		break;
	case hwmon_temp_max:
		reg = TMP102_THIGH_REG;
		break;
	default:
		return -EOPNOTSUPP;
	}

	temp = FUNC0(temp, -256000, 255000);
	return FUNC2(tmp102->regmap, reg, FUNC3(temp));
}