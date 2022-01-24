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
struct g760a_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/  set_cnt; struct i2c_client* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  G760A_REG_SET_CNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ,int) ; 
 struct g760a_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute *da,
			  const char *buf, size_t count)
{
	struct g760a_data *data = FUNC2(dev);
	struct i2c_client *client = data->client;
	unsigned long val;

	if (FUNC4(buf, 10, &val))
		return -EINVAL;

	FUNC5(&data->update_lock);
	data->set_cnt = FUNC0(FUNC1(val, 0, 255));
	FUNC3(client, G760A_REG_SET_CNT, data->set_cnt);
	FUNC6(&data->update_lock);

	return count;
}