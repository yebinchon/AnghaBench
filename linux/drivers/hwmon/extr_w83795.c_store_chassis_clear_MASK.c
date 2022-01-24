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
struct w83795_data {int /*<<< orphan*/  update_lock; scalar_t__ valid; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  W83795_REG_CLR_CHASSIS ; 
 struct w83795_data* FUNC1 (struct i2c_client*) ; 
 scalar_t__ FUNC2 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC5 (struct device*) ; 
 unsigned long FUNC6 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static ssize_t
FUNC8(struct device *dev,
		    struct device_attribute *attr, const char *buf,
		    size_t count)
{
	struct i2c_client *client = FUNC5(dev);
	struct w83795_data *data = FUNC1(client);
	unsigned long val;

	if (FUNC2(buf, 10, &val) < 0 || val != 0)
		return -EINVAL;

	FUNC3(&data->update_lock);
	val = FUNC6(client, W83795_REG_CLR_CHASSIS);
	val |= 0x80;
	FUNC7(client, W83795_REG_CLR_CHASSIS, val);

	/* Clear status and force cache refresh */
	FUNC6(client, FUNC0(5));
	data->valid = 0;
	FUNC4(&data->update_lock);
	return count;
}