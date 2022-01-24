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
struct tc654_data {int valid; int* rpm_output; int* fan_fault; int config; int status; int duty_cycle; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct tc654_data* FUNC0 (int) ; 
 int /*<<< orphan*/  TC654_REG_CONFIG ; 
 int /*<<< orphan*/  TC654_REG_DUTY_CYCLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  TC654_REG_STATUS ; 
 scalar_t__ TC654_UPDATE_INTERVAL ; 
 struct tc654_data* FUNC3 (struct device*) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct tc654_data *FUNC9(struct device *dev)
{
	struct tc654_data *data = FUNC3(dev);
	struct i2c_client *client = data->client;
	int ret = 0;

	FUNC6(&data->update_lock);
	if (FUNC8(jiffies, data->last_updated + TC654_UPDATE_INTERVAL) &&
	    FUNC5(data->valid))
		goto out;

	ret = FUNC4(client, FUNC2(0));
	if (ret < 0)
		goto out;
	data->rpm_output[0] = ret;

	ret = FUNC4(client, FUNC2(1));
	if (ret < 0)
		goto out;
	data->rpm_output[1] = ret;

	ret = FUNC4(client, FUNC1(0));
	if (ret < 0)
		goto out;
	data->fan_fault[0] = ret;

	ret = FUNC4(client, FUNC1(1));
	if (ret < 0)
		goto out;
	data->fan_fault[1] = ret;

	ret = FUNC4(client, TC654_REG_CONFIG);
	if (ret < 0)
		goto out;
	data->config = ret;

	ret = FUNC4(client, TC654_REG_STATUS);
	if (ret < 0)
		goto out;
	data->status = ret;

	ret = FUNC4(client, TC654_REG_DUTY_CYCLE);
	if (ret < 0)
		goto out;
	data->duty_cycle = ret & 0x0f;

	data->last_updated = jiffies;
	data->valid = true;
out:
	FUNC7(&data->update_lock);

	if (ret < 0)		/* upon error, encode it in return value */
		data = FUNC0(ret);

	return data;
}