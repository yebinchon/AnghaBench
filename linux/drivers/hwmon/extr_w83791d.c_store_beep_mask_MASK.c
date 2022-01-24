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
struct w83791d_data {int beep_mask; int beep_enable; int /*<<< orphan*/  update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (long) ; 
 int GLOBAL_BEEP_ENABLE_MASK ; 
 int GLOBAL_BEEP_ENABLE_SHIFT ; 
 int /*<<< orphan*/ * W83791D_REG_BEEP_CTRL ; 
 struct w83791d_data* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ ,long) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				struct device_attribute *attr,
				const char *buf, size_t count)
{
	struct i2c_client *client = FUNC5(dev);
	struct w83791d_data *data = FUNC1(client);
	int i;
	long val;
	int err;

	err = FUNC2(buf, 10, &val);
	if (err)
		return err;

	FUNC3(&data->update_lock);

	/*
	 * The beep_enable state overrides any enabling request from
	 * the masks
	 */
	data->beep_mask = FUNC0(val) & ~GLOBAL_BEEP_ENABLE_MASK;
	data->beep_mask |= (data->beep_enable << GLOBAL_BEEP_ENABLE_SHIFT);

	val = data->beep_mask;

	for (i = 0; i < 3; i++) {
		FUNC6(client, W83791D_REG_BEEP_CTRL[i], (val & 0xff));
		val >>= 8;
	}

	FUNC4(&data->update_lock);

	return count;
}