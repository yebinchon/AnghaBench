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
typedef  int u8 ;
struct w83792d_data {int /*<<< orphan*/  update_lock; scalar_t__ valid; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  W83792D_REG_CHASSIS_CLR ; 
 struct w83792d_data* FUNC0 (struct i2c_client*) ; 
 scalar_t__ FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC4 (struct device*) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC7(struct device *dev, struct device_attribute *attr,
		       const char *buf, size_t count)
{
	struct i2c_client *client = FUNC4(dev);
	struct w83792d_data *data = FUNC0(client);
	unsigned long val;
	u8 reg;

	if (FUNC1(buf, 10, &val) || val != 0)
		return -EINVAL;

	FUNC2(&data->update_lock);
	reg = FUNC5(client, W83792D_REG_CHASSIS_CLR);
	FUNC6(client, W83792D_REG_CHASSIS_CLR, reg | 0x80);
	data->valid = 0;		/* Force cache refresh */
	FUNC3(&data->update_lock);

	return count;
}