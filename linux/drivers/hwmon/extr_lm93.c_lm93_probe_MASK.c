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
struct lm93_data {void (* update ) (struct lm93_data*,struct i2c_client*) ;int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; int /*<<< orphan*/  adapter; struct device dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int LM93_SMBUS_FUNC_FULL ; 
 int LM93_SMBUS_FUNC_MIN ; 
 int FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct device* FUNC2 (struct device*,int /*<<< orphan*/ ,struct lm93_data*,int /*<<< orphan*/ ) ; 
 struct lm93_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  disable_block ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lm93_groups ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*) ; 
 void FUNC6 (struct lm93_data*,struct i2c_client*) ; 
 void FUNC7 (struct lm93_data*,struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
		      const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct lm93_data *data;
	struct device *hwmon_dev;
	int func;
	void (*update)(struct lm93_data *, struct i2c_client *);

	/* choose update routine based on bus capabilities */
	func = FUNC4(client->adapter);
	if (((LM93_SMBUS_FUNC_FULL & func) == LM93_SMBUS_FUNC_FULL) &&
			(!disable_block)) {
		FUNC1(dev, "using SMBus block data transactions\n");
		update = lm93_update_client_full;
	} else if ((LM93_SMBUS_FUNC_MIN & func) == LM93_SMBUS_FUNC_MIN) {
		FUNC1(dev, "disabled SMBus block data transactions\n");
		update = lm93_update_client_min;
	} else {
		FUNC1(dev, "detect failed, smbus byte and/or word data not supported!\n");
		return -ENODEV;
	}

	data = FUNC3(dev, sizeof(struct lm93_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	/* housekeeping */
	data->client = client;
	data->update = update;
	FUNC8(&data->update_lock);

	/* initialize the chip */
	FUNC5(client);

	hwmon_dev = FUNC2(dev, client->name,
							   data,
							   lm93_groups);
	return FUNC0(hwmon_dev);
}