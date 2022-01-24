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
struct w83792d_data {int* fan_min; int* fan_div; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * W83792D_REG_FAN_DIV ; 
 int /*<<< orphan*/ * W83792D_REG_FAN_MIN ; 
 struct w83792d_data* FUNC4 (struct i2c_client*) ; 
 int FUNC5 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC8 (struct device*) ; 
 struct sensor_device_attribute* FUNC9 (struct device_attribute*) ; 
 int FUNC10 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC12(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t count)
{
	struct sensor_device_attribute *sensor_attr = FUNC9(attr);
	int nr = sensor_attr->index - 1;
	struct i2c_client *client = FUNC8(dev);
	struct w83792d_data *data = FUNC4(client);
	unsigned long min;
	/*u8 reg;*/
	u8 fan_div_reg = 0;
	u8 tmp_fan_div;
	unsigned long val;
	int err;

	err = FUNC5(buf, 10, &val);
	if (err)
		return err;

	/* Save fan_min */
	FUNC6(&data->update_lock);
	min = FUNC2(data->fan_min[nr],
			   FUNC0(data->fan_div[nr]));

	data->fan_div[nr] = FUNC1(val);

	fan_div_reg = FUNC10(client, W83792D_REG_FAN_DIV[nr >> 1]);
	fan_div_reg &= (nr & 0x01) ? 0x8f : 0xf8;
	tmp_fan_div = (nr & 0x01) ? (((data->fan_div[nr]) << 4) & 0x70)
					: ((data->fan_div[nr]) & 0x07);
	FUNC11(client, W83792D_REG_FAN_DIV[nr >> 1],
					fan_div_reg | tmp_fan_div);

	/* Restore fan_min */
	data->fan_min[nr] = FUNC3(min, FUNC0(data->fan_div[nr]));
	FUNC11(client, W83792D_REG_FAN_MIN[nr], data->fan_min[nr]);
	FUNC7(&data->update_lock);

	return count;
}