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
typedef  unsigned long u8 ;
struct w83793_data {unsigned long* temp_mode; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute_2 {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/ * W83793_REG_TEMP_MODE ; 
 struct w83793_data* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC4 (struct device*) ; 
 struct sensor_device_attribute_2* FUNC5 (struct device_attribute*) ; 
 unsigned long FUNC6 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static ssize_t
FUNC8(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t count)
{
	struct i2c_client *client = FUNC4(dev);
	struct w83793_data *data = FUNC0(client);
	struct sensor_device_attribute_2 *sensor_attr =
	    FUNC5(attr);
	int index = sensor_attr->index;
	u8 mask = (index < 4) ? 0x03 : 0x01;
	u8 shift = (index < 4) ? (2 * index) : (index - 4);
	unsigned long val;
	int err;

	err = FUNC1(buf, 10, &val);
	if (err)
		return err;

	/* transform the sysfs interface values into table above */
	if ((val == 6) && (index < 4)) {
		val -= 3;
	} else if ((val == 3 && index < 4)
		|| (val == 4 && index >= 4)) {
		/* transform diode or thermistor into internal enable */
		val = !!val;
	} else {
		return -EINVAL;
	}

	index = (index < 4) ? 0 : 1;
	FUNC2(&data->update_lock);
	data->temp_mode[index] =
	    FUNC6(client, W83793_REG_TEMP_MODE[index]);
	data->temp_mode[index] &= ~(mask << shift);
	data->temp_mode[index] |= val << shift;
	FUNC7(client, W83793_REG_TEMP_MODE[index],
							data->temp_mode[index]);
	FUNC3(&data->update_lock);

	return count;
}