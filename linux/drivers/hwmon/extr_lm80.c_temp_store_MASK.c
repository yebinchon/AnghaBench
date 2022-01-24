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
struct sensor_device_attribute {int index; } ;
struct lm80_data {int* temp; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (long) ; 
 struct lm80_data* FUNC1 (struct device*) ; 
 int FUNC2 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * temp_regs ; 
 struct sensor_device_attribute* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
			  struct device_attribute *devattr, const char *buf,
			  size_t count)
{
	struct sensor_device_attribute *attr = FUNC6(devattr);
	struct lm80_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	int nr = attr->index;
	long val;
	int err = FUNC2(buf, 10, &val);
	if (err < 0)
		return err;

	FUNC4(&data->update_lock);
	data->temp[nr] = FUNC0(val);
	FUNC3(client, temp_regs[nr], data->temp[nr] >> 8);
	FUNC5(&data->update_lock);
	return count;
}