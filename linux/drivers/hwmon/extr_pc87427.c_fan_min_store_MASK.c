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
struct pc87427_data {int* address; int /*<<< orphan*/  lock; int /*<<< orphan*/ * fan_min; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  FAN_STATUS_MONEN ; 
 size_t LD_FAN ; 
 scalar_t__ PC87427_REG_BANK ; 
 scalar_t__ PC87427_REG_FAN_MIN ; 
 scalar_t__ PC87427_REG_FAN_STATUS ; 
 struct pc87427_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
			     struct device_attribute *devattr,
			     const char *buf, size_t count)
{
	struct pc87427_data *data = FUNC1(dev);
	int nr = FUNC8(devattr)->index;
	unsigned long val;
	int iobase = data->address[LD_FAN];

	if (FUNC3(buf, 10, &val) < 0)
		return -EINVAL;

	FUNC4(&data->lock);
	FUNC6(FUNC0(nr), iobase + PC87427_REG_BANK);
	/*
	 * The low speed limit registers are read-only while monitoring
	 * is enabled, so we have to disable monitoring, then change the
	 * limit, and finally enable monitoring again.
	 */
	FUNC6(0, iobase + PC87427_REG_FAN_STATUS);
	data->fan_min[nr] = FUNC2(val);
	FUNC7(data->fan_min[nr], iobase + PC87427_REG_FAN_MIN);
	FUNC6(FAN_STATUS_MONEN, iobase + PC87427_REG_FAN_STATUS);
	FUNC5(&data->lock);

	return count;
}