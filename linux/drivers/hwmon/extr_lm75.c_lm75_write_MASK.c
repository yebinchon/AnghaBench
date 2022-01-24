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
struct device {int dummy; } ;
typedef  enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;

/* Variables and functions */
 int EINVAL ; 
#define  hwmon_chip 129 
#define  hwmon_temp 128 
 int FUNC0 (struct device*,int /*<<< orphan*/ ,long) ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ,long) ; 

__attribute__((used)) static int FUNC2(struct device *dev, enum hwmon_sensor_types type,
		      u32 attr, int channel, long val)
{
	switch (type) {
	case hwmon_chip:
		return FUNC0(dev, attr, val);
	case hwmon_temp:
		return FUNC1(dev, attr, val);
	default:
		return -EINVAL;
	}
	return 0;
}