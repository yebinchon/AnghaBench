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
struct lm63_data {int config_fan; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  LM63_REG_CONFIG_FAN ; 
 struct lm63_data* FUNC0 (struct device*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 
 scalar_t__ FUNC4 (struct device*,struct lm63_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				 struct device_attribute *dummy,
				 const char *buf, size_t count)
{
	struct lm63_data *data = FUNC0(dev);
	struct i2c_client *client = data->client;
	unsigned long val;
	int err;

	err = FUNC3(buf, 10, &val);
	if (err)
		return err;
	if (val < 1 || val > 2)
		return -EINVAL;

	/*
	 * Only let the user switch to automatic mode if the lookup table
	 * looks sane.
	 */
	if (val == 2 && FUNC4(dev, data))
		return -EPERM;

	FUNC5(&data->update_lock);
	data->config_fan = FUNC1(client,
						    LM63_REG_CONFIG_FAN);
	if (val == 1)
		data->config_fan |= 0x20;
	else
		data->config_fan &= ~0x20;
	FUNC2(client, LM63_REG_CONFIG_FAN,
				  data->config_fan);
	FUNC6(&data->update_lock);
	return count;
}