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
struct w83793_data {int** sf2_temp; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 long FUNC0 (long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 struct w83793_data* FUNC2 (struct i2c_client*) ; 
 int FUNC3 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC6 (struct device*) ; 
 struct sensor_device_attribute_2* FUNC7 (struct device_attribute*) ; 
 int FUNC8 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,int /*<<< orphan*/ ,long) ; 

__attribute__((used)) static ssize_t
FUNC10(struct device *dev, struct device_attribute *attr,
	       const char *buf, size_t count)
{
	struct i2c_client *client = FUNC6(dev);
	struct w83793_data *data = FUNC2(client);
	struct sensor_device_attribute_2 *sensor_attr =
	    FUNC7(attr);
	int nr = sensor_attr->nr;
	int index = sensor_attr->index;
	long val;
	int err;

	err = FUNC3(buf, 10, &val);
	if (err)
		return err;
	val = FUNC0(val, 0, 0x7f);

	FUNC4(&data->update_lock);
	data->sf2_temp[index][nr] =
	    FUNC8(client, FUNC1(index, nr)) & 0x80;
	data->sf2_temp[index][nr] |= val;
	FUNC9(client, FUNC1(index, nr),
					     data->sf2_temp[index][nr]);
	FUNC5(&data->update_lock);
	return count;
}