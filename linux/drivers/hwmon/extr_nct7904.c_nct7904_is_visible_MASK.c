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
typedef  int /*<<< orphan*/  umode_t ;
typedef  int /*<<< orphan*/  u32 ;
typedef  enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;

/* Variables and functions */
#define  hwmon_fan 131 
#define  hwmon_in 130 
#define  hwmon_pwm 129 
#define  hwmon_temp 128 
 int /*<<< orphan*/  FUNC0 (void const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (void const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (void const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static umode_t FUNC4(const void *data,
				  enum hwmon_sensor_types type,
				  u32 attr, int channel)
{
	switch (type) {
	case hwmon_in:
		return FUNC1(data, attr, channel);
	case hwmon_fan:
		return FUNC0(data, attr, channel);
	case hwmon_pwm:
		return FUNC2(data, attr, channel);
	case hwmon_temp:
		return FUNC3(data, attr, channel);
	default:
		return 0;
	}
}