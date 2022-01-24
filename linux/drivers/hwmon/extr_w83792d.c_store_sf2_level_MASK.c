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
struct w83792d_data {int** sf2_levels; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/ ** W83792D_REG_LEVELS ; 
 int FUNC0 (unsigned long,int /*<<< orphan*/ ,int) ; 
 struct w83792d_data* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC5 (struct device*) ; 
 struct sensor_device_attribute_2* FUNC6 (struct device_attribute*) ; 
 int FUNC7 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC9(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t count)
{
	struct sensor_device_attribute_2 *sensor_attr
	  = FUNC6(attr);
	int nr = sensor_attr->nr;
	int index = sensor_attr->index - 1;
	struct i2c_client *client = FUNC5(dev);
	struct w83792d_data *data = FUNC1(client);
	u8 mask_tmp = 0, level_tmp = 0;
	unsigned long val;
	int err;

	err = FUNC2(buf, 10, &val);
	if (err)
		return err;

	FUNC3(&data->update_lock);
	data->sf2_levels[index][nr] = FUNC0((val * 15) / 100, 0, 15);
	mask_tmp = FUNC7(client, W83792D_REG_LEVELS[index][nr])
		& ((nr == 3) ? 0xf0 : 0x0f);
	if (nr == 3)
		level_tmp = data->sf2_levels[index][nr];
	else
		level_tmp = data->sf2_levels[index][nr] << 4;
	FUNC8(client, W83792D_REG_LEVELS[index][nr],
			    level_tmp | mask_tmp);
	FUNC4(&data->update_lock);

	return count;
}