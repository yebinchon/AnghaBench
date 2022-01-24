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
struct i2c_client {int dummy; } ;
struct gl520_data {unsigned long alarm_mask; unsigned long beep_mask; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  GL520_REG_BEEP_MASK ; 
 struct gl520_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC2 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			       struct device_attribute *attr, const char *buf,
			       size_t count)
{
	struct gl520_data *data = FUNC0(dev);
	struct i2c_client *client = data->client;
	unsigned long r;
	int err;

	err = FUNC2(buf, 10, &r);
	if (err)
		return err;

	FUNC3(&data->update_lock);
	r &= data->alarm_mask;
	data->beep_mask = r;
	FUNC1(client, GL520_REG_BEEP_MASK, r);
	FUNC4(&data->update_lock);
	return count;
}