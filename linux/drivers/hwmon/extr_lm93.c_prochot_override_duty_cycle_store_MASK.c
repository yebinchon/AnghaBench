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
struct lm93_data {int prochot_override; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  LM93_REG_PROCHOT_OVERRIDE ; 
 int FUNC0 (unsigned long,int /*<<< orphan*/ ,int) ; 
 struct lm93_data* FUNC1 (struct device*) ; 
 int FUNC2 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
						struct device_attribute *attr,
						const char *buf, size_t count)
{
	struct lm93_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	unsigned long val;
	int err;

	err = FUNC2(buf, 10, &val);
	if (err)
		return err;

	FUNC4(&data->update_lock);
	data->prochot_override = (data->prochot_override & 0xf0) |
					FUNC0(val, 0, 15);
	FUNC3(client, LM93_REG_PROCHOT_OVERRIDE,
			data->prochot_override);
	FUNC5(&data->update_lock);
	return count;
}