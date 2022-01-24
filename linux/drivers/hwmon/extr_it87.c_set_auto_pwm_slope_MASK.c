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
struct sensor_device_attribute {int index; } ;
struct it87_data {int** auto_pwm; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 struct it87_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct it87_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				  struct device_attribute *attr,
				  const char *buf, size_t count)
{
	struct it87_data *data = FUNC1(dev);
	struct sensor_device_attribute *sensor_attr = FUNC6(attr);
	int nr = sensor_attr->index;
	unsigned long val;

	if (FUNC3(buf, 10, &val) < 0 || val > 127)
		return -EINVAL;

	FUNC4(&data->update_lock);
	data->auto_pwm[nr][1] = (data->auto_pwm[nr][1] & 0x80) | val;
	FUNC2(data, FUNC0(nr, 4),
			 data->auto_pwm[nr][1]);
	FUNC5(&data->update_lock);
	return count;
}