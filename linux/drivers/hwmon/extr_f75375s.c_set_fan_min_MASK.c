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
struct f75375_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * fan_min; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct f75375_data* FUNC2 (struct i2c_client*) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 struct i2c_client* FUNC7 (struct device*) ; 
 TYPE_1__* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t count)
{
	int nr = FUNC8(attr)->index;
	struct i2c_client *client = FUNC7(dev);
	struct f75375_data *data = FUNC2(client);
	unsigned long val;
	int err;

	err = FUNC3(buf, 10, &val);
	if (err < 0)
		return err;

	FUNC4(&data->update_lock);
	data->fan_min[nr] = FUNC6(val);
	FUNC1(client, FUNC0(nr), data->fan_min[nr]);
	FUNC5(&data->update_lock);
	return count;
}