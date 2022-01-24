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
struct w83795_data {unsigned long*** sf4_reg; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t SF4_TEMP ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 struct w83795_data* FUNC1 (struct i2c_client*) ; 
 scalar_t__ FUNC2 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC5 (struct device*) ; 
 struct sensor_device_attribute_2* FUNC6 (struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static ssize_t
FUNC8(struct device *dev, struct device_attribute *attr,
	  const char *buf, size_t count)
{
	struct i2c_client *client = FUNC5(dev);
	struct w83795_data *data = FUNC1(client);
	struct sensor_device_attribute_2 *sensor_attr =
	    FUNC6(attr);
	int nr = sensor_attr->nr;
	int index = sensor_attr->index;
	unsigned long val;

	if (FUNC2(buf, 10, &val) < 0)
		return -EINVAL;
	val /= 1000;

	FUNC3(&data->update_lock);
	FUNC7(client, FUNC0(index, nr), val);
	data->sf4_reg[index][SF4_TEMP][nr] = val;
	FUNC4(&data->update_lock);

	return count;
}