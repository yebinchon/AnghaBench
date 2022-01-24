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
struct w83793_data {int beep_enable; int /*<<< orphan*/  update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  W83793_REG_OVT_BEEP ; 
 struct w83793_data* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC4 (struct device*) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static ssize_t
FUNC7(struct device *dev, struct device_attribute *attr,
		  const char *buf, size_t count)
{
	struct i2c_client *client = FUNC4(dev);
	struct w83793_data *data = FUNC0(client);
	unsigned long val;
	int err;

	err = FUNC1(buf, 10, &val);
	if (err)
		return err;

	if (val > 1)
		return -EINVAL;

	FUNC2(&data->update_lock);
	data->beep_enable = FUNC5(client, W83793_REG_OVT_BEEP)
			    & 0xfd;
	data->beep_enable |= val << 1;
	FUNC6(client, W83793_REG_OVT_BEEP, data->beep_enable);
	FUNC3(&data->update_lock);

	return count;
}