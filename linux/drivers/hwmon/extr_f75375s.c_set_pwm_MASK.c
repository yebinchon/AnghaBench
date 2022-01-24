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
struct f75375_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * pwm; int /*<<< orphan*/ * pwm_enable; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int) ; 
 struct f75375_data* FUNC4 (struct i2c_client*) ; 
 int FUNC5 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC8 (struct device*) ; 
 TYPE_1__* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t count)
{
	int nr = FUNC9(attr)->index;
	struct i2c_client *client = FUNC8(dev);
	struct f75375_data *data = FUNC4(client);
	unsigned long val;
	int err;

	err = FUNC5(buf, 10, &val);
	if (err < 0)
		return err;

	if (FUNC0(data->pwm_enable[nr]) ||
	    !FUNC2(data->pwm_enable[nr]))
		return -EINVAL;

	FUNC6(&data->update_lock);
	data->pwm[nr] = FUNC1(val, 0, 255);
	FUNC3(client, nr);
	FUNC7(&data->update_lock);
	return count;
}