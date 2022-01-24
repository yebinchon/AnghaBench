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
struct w83793_data {int* in_low_bits; unsigned long** in; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/ ** W83793_REG_IN ; 
 int /*<<< orphan*/ * W83793_REG_IN_LOW_BITS ; 
 unsigned long FUNC0 (unsigned long,int /*<<< orphan*/ ,int) ; 
 struct w83793_data* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int* scale_in ; 
 int* scale_in_add ; 
 struct i2c_client* FUNC5 (struct device*) ; 
 struct sensor_device_attribute_2* FUNC6 (struct device_attribute*) ; 
 int FUNC7 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static ssize_t
FUNC9(struct device *dev, struct device_attribute *attr,
	 const char *buf, size_t count)
{
	struct sensor_device_attribute_2 *sensor_attr =
	    FUNC6(attr);
	int nr = sensor_attr->nr;
	int index = sensor_attr->index;
	struct i2c_client *client = FUNC5(dev);
	struct w83793_data *data = FUNC1(client);
	unsigned long val;
	int err;

	err = FUNC2(buf, 10, &val);
	if (err)
		return err;
	val = (val + scale_in[index] / 2) / scale_in[index];

	FUNC3(&data->update_lock);
	if (index > 2) {
		/* fix the limit values of 5VDD and 5VSB to ALARM mechanism */
		if (nr == 1 || nr == 2)
			val -= scale_in_add[index] / scale_in[index];
		val = FUNC0(val, 0, 255);
	} else {
		val = FUNC0(val, 0, 0x3FF);
		data->in_low_bits[nr] =
		    FUNC7(client, W83793_REG_IN_LOW_BITS[nr]);
		data->in_low_bits[nr] &= ~(0x03 << (2 * index));
		data->in_low_bits[nr] |= (val & 0x03) << (2 * index);
		FUNC8(client, W83793_REG_IN_LOW_BITS[nr],
						     data->in_low_bits[nr]);
		val >>= 2;
	}
	data->in[index][nr] = val;
	FUNC8(client, W83793_REG_IN[index][nr],
							data->in[index][nr]);
	FUNC4(&data->update_lock);
	return count;
}