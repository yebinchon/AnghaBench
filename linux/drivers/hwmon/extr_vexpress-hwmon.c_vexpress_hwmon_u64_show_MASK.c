#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct vexpress_hwmon_data {int /*<<< orphan*/  reg; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct vexpress_hwmon_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
		struct device_attribute *dev_attr, char *buffer)
{
	struct vexpress_hwmon_data *data = FUNC0(dev);
	int err;
	u32 value_hi, value_lo;

	err = FUNC2(data->reg, 0, &value_lo);
	if (err)
		return err;

	err = FUNC2(data->reg, 1, &value_hi);
	if (err)
		return err;

	return FUNC3(buffer, PAGE_SIZE, "%llu\n",
			FUNC1(((u64)value_hi << 32) | value_lo,
			FUNC4(dev_attr)->index));
}