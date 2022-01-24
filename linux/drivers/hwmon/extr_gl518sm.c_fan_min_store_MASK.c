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
struct i2c_client {int dummy; } ;
struct gl518_data {int* fan_min; int beep_mask; int alarm_mask; int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * fan_div; struct i2c_client* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL518_REG_ALARM ; 
 int /*<<< orphan*/  GL518_REG_FAN_LIMIT ; 
 struct gl518_data* FUNC2 (struct device*) ; 
 void* FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
			     struct device_attribute *attr, const char *buf,
			     size_t count)
{
	struct gl518_data *data = FUNC2(dev);
	struct i2c_client *client = data->client;
	int nr = FUNC8(attr)->index;
	int regvalue;
	unsigned long val;
	int err;

	err = FUNC5(buf, 10, &val);
	if (err)
		return err;

	FUNC6(&data->update_lock);
	regvalue = FUNC3(client, GL518_REG_FAN_LIMIT);
	data->fan_min[nr] = FUNC1(val, FUNC0(data->fan_div[nr]));
	regvalue = (regvalue & (0xff << (8 * nr)))
		 | (data->fan_min[nr] << (8 * (1 - nr)));
	FUNC4(client, GL518_REG_FAN_LIMIT, regvalue);

	data->beep_mask = FUNC3(client, GL518_REG_ALARM);
	if (data->fan_min[nr] == 0)
		data->alarm_mask &= ~(0x20 << nr);
	else
		data->alarm_mask |= (0x20 << nr);
	data->beep_mask &= data->alarm_mask;
	FUNC4(client, GL518_REG_ALARM, data->beep_mask);

	FUNC7(&data->update_lock);
	return count;
}