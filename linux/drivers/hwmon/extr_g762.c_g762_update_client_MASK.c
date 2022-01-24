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
struct g762_data {int valid; int set_cnt; int act_cnt; int fan_sta; int set_out; int fan_cmd1; int fan_cmd2; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; struct i2c_client* client; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct g762_data* FUNC0 (int) ; 
 int /*<<< orphan*/  G762_REG_ACT_CNT ; 
 int /*<<< orphan*/  G762_REG_FAN_CMD1 ; 
 int /*<<< orphan*/  G762_REG_FAN_CMD2 ; 
 int /*<<< orphan*/  G762_REG_FAN_STA ; 
 int /*<<< orphan*/  G762_REG_SET_CNT ; 
 int /*<<< orphan*/  G762_REG_SET_OUT ; 
 scalar_t__ G762_UPDATE_INTERVAL ; 
 struct g762_data* FUNC1 (struct device*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct g762_data *FUNC7(struct device *dev)
{
	struct g762_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	int ret = 0;

	FUNC4(&data->update_lock);
	if (FUNC6(jiffies, data->last_updated + G762_UPDATE_INTERVAL) &&
	    FUNC3(data->valid))
		goto out;

	ret = FUNC2(client, G762_REG_SET_CNT);
	if (ret < 0)
		goto out;
	data->set_cnt = ret;

	ret = FUNC2(client, G762_REG_ACT_CNT);
	if (ret < 0)
		goto out;
	data->act_cnt = ret;

	ret = FUNC2(client, G762_REG_FAN_STA);
	if (ret < 0)
		goto out;
	data->fan_sta = ret;

	ret = FUNC2(client, G762_REG_SET_OUT);
	if (ret < 0)
		goto out;
	data->set_out = ret;

	ret = FUNC2(client, G762_REG_FAN_CMD1);
	if (ret < 0)
		goto out;
	data->fan_cmd1 = ret;

	ret = FUNC2(client, G762_REG_FAN_CMD2);
	if (ret < 0)
		goto out;
	data->fan_cmd2 = ret;

	data->last_updated = jiffies;
	data->valid = true;
 out:
	FUNC5(&data->update_lock);

	if (ret < 0) /* upon error, encode it in return value */
		data = FUNC0(ret);

	return data;
}