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
struct w83795_data {unsigned long** pwm; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  clkin; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
#define  PWM_FREQ 129 
#define  PWM_STOP_TIME 128 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 unsigned long FUNC1 (unsigned long,int /*<<< orphan*/ ,int) ; 
 struct w83795_data* FUNC2 (struct i2c_client*) ; 
 scalar_t__ FUNC3 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC6 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (unsigned long) ; 
 struct i2c_client* FUNC8 (struct device*) ; 
 struct sensor_device_attribute_2* FUNC9 (struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static ssize_t
FUNC11(struct device *dev, struct device_attribute *attr,
	  const char *buf, size_t count)
{
	struct i2c_client *client = FUNC8(dev);
	struct w83795_data *data = FUNC2(client);
	struct sensor_device_attribute_2 *sensor_attr =
	    FUNC9(attr);
	int nr = sensor_attr->nr;
	int index = sensor_attr->index;
	unsigned long val;

	if (FUNC3(buf, 10, &val) < 0)
		return -EINVAL;

	FUNC4(&data->update_lock);
	switch (nr) {
	case PWM_STOP_TIME:
		val = FUNC7(val);
		break;
	case PWM_FREQ:
		val = FUNC6(val, data->clkin);
		break;
	default:
		val = FUNC1(val, 0, 0xff);
		break;
	}
	FUNC10(client, FUNC0(index, nr), val);
	data->pwm[index][nr] = val;
	FUNC5(&data->update_lock);
	return count;
}