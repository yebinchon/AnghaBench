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
struct tc654_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * fan_fault; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned long FUNC2 (unsigned long,int /*<<< orphan*/ ,int) ; 
 struct tc654_data* FUNC3 (struct device*) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev, struct device_attribute *da,
			     const char *buf, size_t count)
{
	int nr = FUNC8(da)->index;
	struct tc654_data *data = FUNC3(dev);
	struct i2c_client *client = data->client;
	unsigned long val;
	int ret;

	if (FUNC5(buf, 10, &val))
		return -EINVAL;

	val = FUNC2(val, 0, 12750);

	FUNC6(&data->update_lock);

	data->fan_fault[nr] = FUNC0(val);
	ret = FUNC4(client, FUNC1(nr),
					data->fan_fault[nr]);

	FUNC7(&data->update_lock);
	return ret < 0 ? ret : count;
}