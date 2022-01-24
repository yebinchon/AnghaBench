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
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  config4; struct i2c_client* client; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG4_MAXDUTY ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  REG_CONFIG4 ; 
 struct adt7475_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
					struct device_attribute *devattr,
					const char *buf, size_t count)
{
	struct adt7475_data *data = FUNC0(dev);
	struct i2c_client *client = data->client;
	long val;

	if (FUNC3(buf, 10, &val))
		return -EINVAL;
	if (val != 0 && val != 1)
		return -EINVAL;

	FUNC4(&data->lock);
	data->config4 = FUNC1(client, REG_CONFIG4);
	if (val)
		data->config4 |= CONFIG4_MAXDUTY;
	else
		data->config4 &= ~CONFIG4_MAXDUTY;
	FUNC2(client, REG_CONFIG4, data->config4);
	FUNC5(&data->lock);

	return count;
}