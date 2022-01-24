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
struct jc42_data {int extended; int orig_config; int config; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int JC42_CAP_RANGE ; 
 int JC42_CFG_SHUTDOWN ; 
 int /*<<< orphan*/  JC42_REG_CAP ; 
 int /*<<< orphan*/  JC42_REG_CONFIG ; 
 int /*<<< orphan*/  JC42_REG_SMBUS ; 
 int FUNC0 (struct device*) ; 
 int SMBUS_STMOUT ; 
 scalar_t__ FUNC1 (struct device*,char*) ; 
 struct device* FUNC2 (struct device*,int /*<<< orphan*/ ,struct jc42_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct jc42_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct jc42_data*) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  jc42_chip_info ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client, const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct device *hwmon_dev;
	struct jc42_data *data;
	int config, cap;

	data = FUNC3(dev, sizeof(struct jc42_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->client = client;
	FUNC4(client, data);
	FUNC7(&data->update_lock);

	cap = FUNC5(client, JC42_REG_CAP);
	if (cap < 0)
		return cap;

	data->extended = !!(cap & JC42_CAP_RANGE);

	if (FUNC1(dev, "smbus-timeout-disable")) {
		int smbus;

		/*
		 * Not all chips support this register, but from a
		 * quick read of various datasheets no chip appears
		 * incompatible with the below attempt to disable
		 * the timeout. And the whole thing is opt-in...
		 */
		smbus = FUNC5(client, JC42_REG_SMBUS);
		if (smbus < 0)
			return smbus;
		FUNC6(client, JC42_REG_SMBUS,
					     smbus | SMBUS_STMOUT);
	}

	config = FUNC5(client, JC42_REG_CONFIG);
	if (config < 0)
		return config;

	data->orig_config = config;
	if (config & JC42_CFG_SHUTDOWN) {
		config &= ~JC42_CFG_SHUTDOWN;
		FUNC6(client, JC42_REG_CONFIG, config);
	}
	data->config = config;

	hwmon_dev = FUNC2(dev, client->name,
							 data, &jc42_chip_info,
							 NULL);
	return FUNC0(hwmon_dev);
}