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
struct g762_data {int valid; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  G762_REG_SET_OUT ; 
 struct g762_data* FUNC0 (struct device*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev, unsigned long val)
{
	struct g762_data *data = FUNC0(dev);
	struct i2c_client *client = data->client;
	int ret;

	if (val > 255)
		return -EINVAL;

	FUNC2(&data->update_lock);
	ret = FUNC1(client, G762_REG_SET_OUT, val);
	data->valid = false;
	FUNC3(&data->update_lock);

	return ret;
}