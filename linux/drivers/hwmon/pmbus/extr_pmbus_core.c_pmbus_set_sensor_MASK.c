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
typedef  int /*<<< orphan*/  u16 ;
struct pmbus_sensor {int /*<<< orphan*/  data; int /*<<< orphan*/  reg; int /*<<< orphan*/  page; } ;
struct pmbus_data {int /*<<< orphan*/  update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pmbus_data* FUNC1 (struct i2c_client*) ; 
 scalar_t__ FUNC2 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pmbus_data*,struct pmbus_sensor*,long) ; 
 struct i2c_client* FUNC6 (int /*<<< orphan*/ ) ; 
 struct pmbus_sensor* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
				struct device_attribute *devattr,
				const char *buf, size_t count)
{
	struct i2c_client *client = FUNC6(dev->parent);
	struct pmbus_data *data = FUNC1(client);
	struct pmbus_sensor *sensor = FUNC7(devattr);
	ssize_t rv = count;
	long val = 0;
	int ret;
	u16 regval;

	if (FUNC2(buf, 10, &val) < 0)
		return -EINVAL;

	FUNC3(&data->update_lock);
	regval = FUNC5(data, sensor, val);
	ret = FUNC0(client, sensor->page, sensor->reg, regval);
	if (ret < 0)
		rv = ret;
	else
		sensor->data = regval;
	FUNC4(&data->update_lock);
	return rv;
}