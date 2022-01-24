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
typedef  int u8 ;
struct w83791d_data {int* temp_target; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int FUNC0 (long) ; 
 int /*<<< orphan*/ * W83791D_REG_TEMP_TARGET ; 
 struct w83791d_data* FUNC1 (struct i2c_client*) ; 
 scalar_t__ FUNC2 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC5 (struct device*) ; 
 struct sensor_device_attribute* FUNC6 (struct device_attribute*) ; 
 int FUNC7 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct sensor_device_attribute *sensor_attr = FUNC6(attr);
	struct i2c_client *client = FUNC5(dev);
	struct w83791d_data *data = FUNC1(client);
	int nr = sensor_attr->index;
	long val;
	u8 target_mask;

	if (FUNC2(buf, 10, &val))
		return -EINVAL;

	FUNC3(&data->update_lock);
	data->temp_target[nr] = FUNC0(val);
	target_mask = FUNC7(client,
				W83791D_REG_TEMP_TARGET[nr]) & 0x80;
	FUNC8(client, W83791D_REG_TEMP_TARGET[nr],
				data->temp_target[nr] | target_mask);
	FUNC4(&data->update_lock);
	return count;
}