#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct asb100_data {int /*<<< orphan*/ * lm75; int /*<<< orphan*/  hwmon_dev; void** fan_min; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  asb100_group ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*) ; 
 void* FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct asb100_data* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct asb100_data*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	int err;
	struct asb100_data *data;

	data = FUNC6(&client->dev, sizeof(struct asb100_data),
			    GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC8(client, data);
	FUNC10(&data->lock);
	FUNC10(&data->update_lock);

	/* Attach secondary lm75 clients */
	err = FUNC3(client);
	if (err)
		return err;

	/* Initialize the chip */
	FUNC4(client);

	/* A few vars need to be filled upon startup */
	data->fan_min[0] = FUNC5(client, FUNC0(0));
	data->fan_min[1] = FUNC5(client, FUNC0(1));
	data->fan_min[2] = FUNC5(client, FUNC0(2));

	/* Register sysfs hooks */
	err = FUNC11(&client->dev.kobj, &asb100_group);
	if (err)
		goto ERROR3;

	data->hwmon_dev = FUNC7(&client->dev);
	if (FUNC1(data->hwmon_dev)) {
		err = FUNC2(data->hwmon_dev);
		goto ERROR4;
	}

	return 0;

ERROR4:
	FUNC12(&client->dev.kobj, &asb100_group);
ERROR3:
	FUNC9(data->lm75[1]);
	FUNC9(data->lm75[0]);
	return err;
}