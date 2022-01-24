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
struct f75375_data {int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 struct f75375_data* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct i2c_client*,int,unsigned long) ; 
 struct i2c_client* FUNC5 (struct device*) ; 
 TYPE_1__* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t count)
{
	int nr = FUNC6(attr)->index;
	struct i2c_client *client = FUNC5(dev);
	struct f75375_data *data = FUNC0(client);
	unsigned long val;
	int err;

	err = FUNC1(buf, 10, &val);
	if (err < 0)
		return err;

	FUNC2(&data->update_lock);
	err = FUNC4(client, nr, val);
	FUNC3(&data->update_lock);
	return err ? err : count;
}