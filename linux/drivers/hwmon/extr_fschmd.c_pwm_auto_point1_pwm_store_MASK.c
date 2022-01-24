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
struct fschmd_data {size_t kind; unsigned long* fan_min; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/ ** FSCHMD_REG_FAN_MIN ; 
 unsigned long FUNC0 (unsigned long,int,int) ; 
 struct fschmd_data* FUNC1 (struct device*) ; 
 size_t fscsyl ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 TYPE_1__* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
					 struct device_attribute *devattr,
					 const char *buf, size_t count)
{
	int index = FUNC7(devattr)->index;
	struct fschmd_data *data = FUNC1(dev);
	unsigned long v;
	int err;

	err = FUNC3(buf, 10, &v);
	if (err)
		return err;

	/* reg: 0 = allow turning off (except on the syl), 1-255 = 50-100% */
	if (v || data->kind == fscsyl) {
		v = FUNC0(v, 128, 255);
		v = (v - 128) * 2 + 1;
	}

	FUNC4(&data->update_lock);

	FUNC2(FUNC6(dev),
		FSCHMD_REG_FAN_MIN[data->kind][index], v);
	data->fan_min[index] = v;

	FUNC5(&data->update_lock);

	return count;
}