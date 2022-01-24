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
typedef  int /*<<< orphan*/  u32 ;
struct ina3221_data {int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;
typedef  enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 struct ina3221_data* FUNC0 (struct device*) ; 
#define  hwmon_chip 130 
#define  hwmon_curr 129 
#define  hwmon_in 128 
 int FUNC1 (struct device*,int /*<<< orphan*/ ,long*) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ,int,long*) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ,int,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct device *dev, enum hwmon_sensor_types type,
			u32 attr, int channel, long *val)
{
	struct ina3221_data *ina = FUNC0(dev);
	int ret;

	FUNC4(&ina->lock);

	switch (type) {
	case hwmon_chip:
		ret = FUNC1(dev, attr, val);
		break;
	case hwmon_in:
		/* 0-align channel ID */
		ret = FUNC3(dev, attr, channel - 1, val);
		break;
	case hwmon_curr:
		ret = FUNC2(dev, attr, channel, val);
		break;
	default:
		ret = -EOPNOTSUPP;
		break;
	}

	FUNC5(&ina->lock);

	return ret;
}