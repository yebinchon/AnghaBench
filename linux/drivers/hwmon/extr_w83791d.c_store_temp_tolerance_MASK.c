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
typedef  size_t u8 ;
struct w83791d_data {size_t* temp_tolerance; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t FUNC0 (unsigned long) ; 
 int /*<<< orphan*/ * W83791D_REG_TEMP_TOL ; 
 struct w83791d_data* FUNC1 (struct i2c_client*) ; 
 scalar_t__ FUNC2 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC5 (struct device*) ; 
 struct sensor_device_attribute* FUNC6 (struct device_attribute*) ; 
 size_t FUNC7 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct sensor_device_attribute *sensor_attr = FUNC6(attr);
	struct i2c_client *client = FUNC5(dev);
	struct w83791d_data *data = FUNC1(client);
	int nr = sensor_attr->index;
	unsigned long val;
	u8 target_mask;
	u8 reg_idx = 0;
	u8 val_shift = 0;
	u8 keep_mask = 0;

	if (FUNC2(buf, 10, &val))
		return -EINVAL;

	switch (nr) {
	case 0:
		reg_idx = 0;
		val_shift = 0;
		keep_mask = 0xf0;
		break;
	case 1:
		reg_idx = 0;
		val_shift = 4;
		keep_mask = 0x0f;
		break;
	case 2:
		reg_idx = 1;
		val_shift = 0;
		keep_mask = 0xf0;
		break;
	}

	FUNC3(&data->update_lock);
	data->temp_tolerance[nr] = FUNC0(val);
	target_mask = FUNC7(client,
			W83791D_REG_TEMP_TOL[reg_idx]) & keep_mask;
	FUNC8(client, W83791D_REG_TEMP_TOL[reg_idx],
			(data->temp_tolerance[nr] << val_shift) | target_mask);
	FUNC4(&data->update_lock);
	return count;
}