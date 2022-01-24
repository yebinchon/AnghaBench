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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm9240_data {int /*<<< orphan*/  update_lock; scalar_t__ valid; struct i2c_client* client; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADM9240_REG_CHASSIS_CLEAR ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct adm9240_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *attr,
			   const char *buf, size_t count)
{
	struct adm9240_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	unsigned long val;

	if (FUNC3(buf, 10, &val) || val != 0)
		return -EINVAL;

	FUNC4(&data->update_lock);
	FUNC2(client, ADM9240_REG_CHASSIS_CLEAR, 0x80);
	data->valid = 0;		/* Force cache refresh */
	FUNC5(&data->update_lock);
	FUNC0(&client->dev, "chassis intrusion latch cleared\n");

	return count;
}