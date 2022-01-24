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
struct w83791d_data {unsigned long* pwm_enable; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/ * W83791D_REG_FAN_CFG ; 
 struct w83791d_data* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC4 (struct device*) ; 
 struct sensor_device_attribute* FUNC5 (struct device_attribute*) ; 
 size_t FUNC6 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct sensor_device_attribute *sensor_attr = FUNC5(attr);
	struct i2c_client *client = FUNC4(dev);
	struct w83791d_data *data = FUNC0(client);
	int nr = sensor_attr->index;
	unsigned long val;
	u8 reg_cfg_tmp;
	u8 reg_idx = 0;
	u8 val_shift = 0;
	u8 keep_mask = 0;

	int ret = FUNC1(buf, 10, &val);

	if (ret || val < 1 || val > 3)
		return -EINVAL;

	FUNC2(&data->update_lock);
	data->pwm_enable[nr] = val - 1;
	switch (nr) {
	case 0:
		reg_idx = 0;
		val_shift = 2;
		keep_mask = 0xf3;
		break;
	case 1:
		reg_idx = 0;
		val_shift = 4;
		keep_mask = 0xcf;
		break;
	case 2:
		reg_idx = 1;
		val_shift = 2;
		keep_mask = 0xf3;
		break;
	}

	reg_cfg_tmp = FUNC6(client, W83791D_REG_FAN_CFG[reg_idx]);
	reg_cfg_tmp = (reg_cfg_tmp & keep_mask) |
					data->pwm_enable[nr] << val_shift;

	FUNC7(client, W83791D_REG_FAN_CFG[reg_idx], reg_cfg_tmp);
	FUNC3(&data->update_lock);

	return count;
}