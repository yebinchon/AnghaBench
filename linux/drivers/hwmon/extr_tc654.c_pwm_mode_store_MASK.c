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
struct tc654_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/  config; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  TC654_REG_CONFIG ; 
 int /*<<< orphan*/  TC654_REG_CONFIG_DUTYC ; 
 struct tc654_data* FUNC0 (struct device*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *da,
			      const char *buf, size_t count)
{
	struct tc654_data *data = FUNC0(dev);
	struct i2c_client *client = data->client;
	unsigned long val;
	int ret;

	if (FUNC2(buf, 10, &val))
		return -EINVAL;

	if (val != 0 && val != 1)
		return -EINVAL;

	FUNC3(&data->update_lock);

	if (val)
		data->config |= TC654_REG_CONFIG_DUTYC;
	else
		data->config &= ~TC654_REG_CONFIG_DUTYC;

	ret = FUNC1(client, TC654_REG_CONFIG, data->config);

	FUNC4(&data->update_lock);
	return ret < 0 ? ret : count;
}