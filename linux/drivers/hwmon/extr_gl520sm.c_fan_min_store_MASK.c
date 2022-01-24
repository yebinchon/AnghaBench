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
typedef  int u8 ;
struct i2c_client {int dummy; } ;
struct gl520_data {int* fan_min; int beep_mask; int alarm_mask; int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * fan_div; struct i2c_client* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL520_REG_BEEP_MASK ; 
 int /*<<< orphan*/  GL520_REG_FAN_MIN ; 
 struct gl520_data* FUNC1 (struct device*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
			     struct device_attribute *attr, const char *buf,
			     size_t count)
{
	struct gl520_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	int n = FUNC7(attr)->index;
	u8 r;
	unsigned long v;
	int err;

	err = FUNC4(buf, 10, &v);
	if (err)
		return err;

	FUNC5(&data->update_lock);
	r = FUNC0(v, data->fan_div[n]);
	data->fan_min[n] = r;

	if (n == 0)
		FUNC3(client, GL520_REG_FAN_MIN,
				  (FUNC2(client, GL520_REG_FAN_MIN)
				   & ~0xff00) | (r << 8));
	else
		FUNC3(client, GL520_REG_FAN_MIN,
				  (FUNC2(client, GL520_REG_FAN_MIN)
				   & ~0xff) | r);

	data->beep_mask = FUNC2(client, GL520_REG_BEEP_MASK);
	if (data->fan_min[n] == 0)
		data->alarm_mask &= (n == 0) ? ~0x20 : ~0x40;
	else
		data->alarm_mask |= (n == 0) ? 0x20 : 0x40;
	data->beep_mask &= data->alarm_mask;
	FUNC3(client, GL520_REG_BEEP_MASK, data->beep_mask);

	FUNC6(&data->update_lock);
	return count;
}