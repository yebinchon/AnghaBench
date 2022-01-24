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
struct w83791d_data {int beep_enable; int beep_mask; int /*<<< orphan*/  update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int GLOBAL_BEEP_ENABLE_MASK ; 
 int GLOBAL_BEEP_ENABLE_SHIFT ; 
 int /*<<< orphan*/ * W83791D_REG_BEEP_CTRL ; 
 struct w83791d_data* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,long) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				struct device_attribute *attr,
				const char *buf, size_t count)
{
	struct i2c_client *client = FUNC4(dev);
	struct w83791d_data *data = FUNC0(client);
	long val;
	int err;

	err = FUNC1(buf, 10, &val);
	if (err)
		return err;

	FUNC2(&data->update_lock);

	data->beep_enable = val ? 1 : 0;

	/* Keep the full mask value in sync with the current enable */
	data->beep_mask &= ~GLOBAL_BEEP_ENABLE_MASK;
	data->beep_mask |= (data->beep_enable << GLOBAL_BEEP_ENABLE_SHIFT);

	/*
	 * The global control is in the second beep control register
	 * so only need to update that register
	 */
	val = (data->beep_mask >> 8) & 0xff;

	FUNC5(client, W83791D_REG_BEEP_CTRL[1], val);

	FUNC3(&data->update_lock);

	return count;
}