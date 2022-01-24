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
struct max31790_data {int fault_status; int /*<<< orphan*/ * target_count; int /*<<< orphan*/ * fan_dynamics; int /*<<< orphan*/ * tach; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct max31790_data*) ; 
 int FUNC1 (struct max31790_data*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
#define  hwmon_fan_fault 130 
#define  hwmon_fan_input 129 
#define  hwmon_fan_target 128 
 struct max31790_data* FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, u32 attr, int channel,
			     long *val)
{
	struct max31790_data *data = FUNC4(dev);
	int sr, rpm;

	if (FUNC0(data))
		return FUNC1(data);

	switch (attr) {
	case hwmon_fan_input:
		sr = FUNC3(data->fan_dynamics[channel]);
		rpm = FUNC2(data->tach[channel], sr);
		*val = rpm;
		return 0;
	case hwmon_fan_target:
		sr = FUNC3(data->fan_dynamics[channel]);
		rpm = FUNC2(data->target_count[channel], sr);
		*val = rpm;
		return 0;
	case hwmon_fan_fault:
		*val = !!(data->fault_status & (1 << channel));
		return 0;
	default:
		return -EOPNOTSUPP;
	}
}