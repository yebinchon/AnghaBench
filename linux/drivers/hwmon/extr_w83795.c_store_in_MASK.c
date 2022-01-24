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
struct w83795_data {int has_gain; int** in_lsb; int** in; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t IN_LSB_IDX ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 size_t IN_LSB_SHIFT ; 
 int** IN_LSB_SHIFT_IDX ; 
 int /*<<< orphan*/ ** W83795_REG_IN ; 
 unsigned long FUNC1 (unsigned long,int /*<<< orphan*/ ,int) ; 
 struct w83795_data* FUNC2 (struct i2c_client*) ; 
 unsigned long FUNC3 (int,unsigned long) ; 
 scalar_t__ FUNC4 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC7 (struct device*) ; 
 struct sensor_device_attribute_2* FUNC8 (struct device_attribute*) ; 
 int FUNC9 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC11(struct device *dev, struct device_attribute *attr,
	 const char *buf, size_t count)
{
	struct sensor_device_attribute_2 *sensor_attr =
	    FUNC8(attr);
	int nr = sensor_attr->nr;
	int index = sensor_attr->index;
	struct i2c_client *client = FUNC7(dev);
	struct w83795_data *data = FUNC2(client);
	unsigned long val;
	u8 tmp;
	u8 lsb_idx;

	if (FUNC4(buf, 10, &val) < 0)
		return -EINVAL;
	val = FUNC3(index, val);

	if ((index >= 17) &&
	    !((data->has_gain >> (index - 17)) & 1))
		val /= 8;
	val = FUNC1(val, 0, 0x3FF);
	FUNC5(&data->update_lock);

	lsb_idx = IN_LSB_SHIFT_IDX[index][IN_LSB_IDX];
	tmp = FUNC9(client, FUNC0(lsb_idx, nr));
	tmp &= ~(0x03 << IN_LSB_SHIFT_IDX[index][IN_LSB_SHIFT]);
	tmp |= (val & 0x03) << IN_LSB_SHIFT_IDX[index][IN_LSB_SHIFT];
	FUNC10(client, FUNC0(lsb_idx, nr), tmp);
	data->in_lsb[lsb_idx][nr] = tmp;

	tmp = (val >> 2) & 0xff;
	FUNC10(client, W83795_REG_IN[index][nr], tmp);
	data->in[index][nr] = tmp;

	FUNC6(&data->update_lock);
	return count;
}