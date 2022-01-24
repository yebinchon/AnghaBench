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
struct lm93_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/  prochot_override; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  LM93_REG_PROCHOT_OVERRIDE ; 
 struct lm93_data* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * prochot_override_mask ; 
 TYPE_1__* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				      struct device_attribute *attr,
				      const char *buf, size_t count)
{
	int nr = (FUNC5(attr))->index;
	struct lm93_data *data = FUNC0(dev);
	struct i2c_client *client = data->client;
	unsigned long val;
	int err;

	err = FUNC1(buf, 10, &val);
	if (err)
		return err;

	FUNC3(&data->update_lock);
	if (val)
		data->prochot_override |= prochot_override_mask[nr];
	else
		data->prochot_override &= (~prochot_override_mask[nr]);
	FUNC2(client, LM93_REG_PROCHOT_OVERRIDE,
			data->prochot_override);
	FUNC4(&data->update_lock);
	return count;
}