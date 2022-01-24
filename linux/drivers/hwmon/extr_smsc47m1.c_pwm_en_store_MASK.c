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
struct smsc47m1_data {int* pwm; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/ * SMSC47M1_REG_PWM ; 
 struct smsc47m1_data* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct smsc47m1_data*,int /*<<< orphan*/ ,int) ; 
 struct sensor_device_attribute* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
			    struct device_attribute *devattr, const char *buf,
			    size_t count)
{
	struct sensor_device_attribute *attr = FUNC5(devattr);
	struct smsc47m1_data *data = FUNC0(dev);
	int nr = attr->index;
	unsigned long val;
	int err;

	err = FUNC1(buf, 10, &val);
	if (err)
		return err;

	if (val > 1)
		return -EINVAL;

	FUNC2(&data->update_lock);
	data->pwm[nr] &= 0xFE; /* preserve the other bits */
	data->pwm[nr] |= !val;
	FUNC4(data, SMSC47M1_REG_PWM[nr],
			     data->pwm[nr]);
	FUNC3(&data->update_lock);

	return count;
}