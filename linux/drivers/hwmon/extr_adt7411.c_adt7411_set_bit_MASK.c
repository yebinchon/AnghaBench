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
struct sensor_device_attribute_2 {int /*<<< orphan*/  nr; int /*<<< orphan*/  index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7411_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/  next_update; struct i2c_client* client; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 struct adt7411_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute_2* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
			       struct device_attribute *attr, const char *buf,
			       size_t count)
{
	struct sensor_device_attribute_2 *s_attr2 = FUNC5(attr);
	struct adt7411_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	int ret;
	unsigned long flag;

	ret = FUNC2(buf, 0, &flag);
	if (ret || flag > 1)
		return -EINVAL;

	ret = FUNC0(client, s_attr2->index, s_attr2->nr, flag);

	/* force update */
	FUNC3(&data->update_lock);
	data->next_update = jiffies;
	FUNC4(&data->update_lock);

	return ret < 0 ? ret : count;
}