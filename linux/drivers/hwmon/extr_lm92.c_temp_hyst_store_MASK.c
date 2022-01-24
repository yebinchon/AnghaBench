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
struct sensor_device_attribute {size_t index; } ;
struct lm92_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * temp; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  LM92_REG_TEMP_HYST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 long FUNC2 (long,int,int) ; 
 struct lm92_data* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 size_t t_hyst ; 
 struct sensor_device_attribute* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
			       struct device_attribute *devattr,
			       const char *buf, size_t count)
{
	struct sensor_device_attribute *attr = FUNC8(devattr);
	struct lm92_data *data = FUNC3(dev);
	struct i2c_client *client = data->client;
	long val;
	int err;

	err = FUNC5(buf, 10, &val);
	if (err)
		return err;

	val = FUNC2(val, -120000, 220000);
	FUNC6(&data->update_lock);
	data->temp[t_hyst] =
		FUNC1(FUNC0(data->temp[attr->index]) - val);
	FUNC4(client, LM92_REG_TEMP_HYST,
				     data->temp[t_hyst]);
	FUNC7(&data->update_lock);
	return count;
}