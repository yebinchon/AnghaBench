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
struct lm83_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * temp; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/ * LM83_REG_W_HIGH ; 
 int /*<<< orphan*/  FUNC0 (long) ; 
 struct lm83_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
			  struct device_attribute *devattr, const char *buf,
			  size_t count)
{
	struct sensor_device_attribute *attr = FUNC6(devattr);
	struct lm83_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	long val;
	int nr = attr->index;
	int err;

	err = FUNC3(buf, 10, &val);
	if (err < 0)
		return err;

	FUNC4(&data->update_lock);
	data->temp[nr] = FUNC0(val);
	FUNC2(client, LM83_REG_W_HIGH[nr - 4],
				  data->temp[nr]);
	FUNC5(&data->update_lock);
	return count;
}