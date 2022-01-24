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
struct w83795_data {unsigned long* fan_min; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute_2 {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned long FUNC2 (unsigned long) ; 
 struct w83795_data* FUNC3 (struct i2c_client*) ; 
 scalar_t__ FUNC4 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC7 (struct device*) ; 
 struct sensor_device_attribute_2* FUNC8 (struct device_attribute*) ; 
 int FUNC9 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static ssize_t
FUNC11(struct device *dev, struct device_attribute *attr,
	      const char *buf, size_t count)
{
	struct sensor_device_attribute_2 *sensor_attr =
	    FUNC8(attr);
	int index = sensor_attr->index;
	struct i2c_client *client = FUNC7(dev);
	struct w83795_data *data = FUNC3(client);
	unsigned long val;

	if (FUNC4(buf, 10, &val))
		return -EINVAL;
	val = FUNC2(val);

	FUNC5(&data->update_lock);
	data->fan_min[index] = val;
	FUNC10(client, FUNC0(index), (val >> 4) & 0xff);
	val &= 0x0f;
	if (index & 1) {
		val <<= 4;
		val |= FUNC9(client, FUNC1(index))
		       & 0x0f;
	} else {
		val |= FUNC9(client, FUNC1(index))
		       & 0xf0;
	}
	FUNC10(client, FUNC1(index), val & 0xff);
	FUNC6(&data->update_lock);

	return count;
}