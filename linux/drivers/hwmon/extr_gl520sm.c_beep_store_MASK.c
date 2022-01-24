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
struct gl520_data {int beep_mask; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GL520_REG_BEEP_MASK ; 
 struct gl520_data* FUNC0 (struct device*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute *attr,
			  const char *buf, size_t count)
{
	struct gl520_data *data = FUNC0(dev);
	struct i2c_client *client = data->client;
	int bitnr = FUNC6(attr)->index;
	unsigned long bit;

	int err;

	err = FUNC3(buf, 10, &bit);
	if (err)
		return err;
	if (bit & ~1)
		return -EINVAL;

	FUNC4(&data->update_lock);
	data->beep_mask = FUNC1(client, GL520_REG_BEEP_MASK);
	if (bit)
		data->beep_mask |= (1 << bitnr);
	else
		data->beep_mask &= ~(1 << bitnr);
	FUNC2(client, GL520_REG_BEEP_MASK, data->beep_mask);
	FUNC5(&data->update_lock);
	return count;
}