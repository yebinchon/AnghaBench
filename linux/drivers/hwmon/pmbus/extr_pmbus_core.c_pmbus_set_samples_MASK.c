#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pmbus_samples_reg {TYPE_1__* attr; int /*<<< orphan*/  page; } ;
struct pmbus_data {int /*<<< orphan*/  update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 size_t EINVAL ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 struct pmbus_data* FUNC1 (struct i2c_client*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ,long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC5 (int /*<<< orphan*/ ) ; 
 struct pmbus_samples_reg* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				 struct device_attribute *devattr,
				 const char *buf, size_t count)
{
	int ret;
	long val;
	struct i2c_client *client = FUNC5(dev->parent);
	struct pmbus_samples_reg *reg = FUNC6(devattr);
	struct pmbus_data *data = FUNC1(client);

	if (FUNC2(buf, 0, &val) < 0)
		return -EINVAL;

	FUNC3(&data->update_lock);
	ret = FUNC0(client, reg->page, reg->attr->reg, val);
	FUNC4(&data->update_lock);

	return ret ? : count;
}