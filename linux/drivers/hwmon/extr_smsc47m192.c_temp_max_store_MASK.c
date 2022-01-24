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
struct smsc47m192_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * temp_max; struct i2c_client* client; } ;
struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SMSC47M192_REG_TEMP_MAX ; 
 int /*<<< orphan*/  FUNC0 (long) ; 
 struct smsc47m192_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
			      struct device_attribute *attr, const char *buf,
			      size_t count)
{
	struct sensor_device_attribute *sensor_attr = FUNC6(attr);
	int nr = sensor_attr->index;
	struct smsc47m192_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	long val;
	int err;

	err = FUNC3(buf, 10, &val);
	if (err)
		return err;

	FUNC4(&data->update_lock);
	data->temp_max[nr] = FUNC0(val);
	FUNC2(client, SMSC47M192_REG_TEMP_MAX[nr],
						data->temp_max[nr]);
	FUNC5(&data->update_lock);
	return count;
}