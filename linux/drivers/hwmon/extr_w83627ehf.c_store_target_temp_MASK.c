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
struct w83627ehf_data {long* target_temp; int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * REG_TARGET; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long,int) ; 
 long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct w83627ehf_data* FUNC2 (struct device*) ; 
 int FUNC3 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute* FUNC6 (struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC7 (struct w83627ehf_data*,int /*<<< orphan*/ ,long) ; 

__attribute__((used)) static ssize_t
FUNC8(struct device *dev, struct device_attribute *attr,
			const char *buf, size_t count)
{
	struct w83627ehf_data *data = FUNC2(dev);
	struct sensor_device_attribute *sensor_attr = FUNC6(attr);
	int nr = sensor_attr->index;
	long val;
	int err;

	err = FUNC3(buf, 10, &val);
	if (err < 0)
		return err;

	val = FUNC1(FUNC0(val, 1000), 0, 127);

	FUNC4(&data->update_lock);
	data->target_temp[nr] = val;
	FUNC7(data, data->REG_TARGET[nr], val);
	FUNC5(&data->update_lock);
	return count;
}