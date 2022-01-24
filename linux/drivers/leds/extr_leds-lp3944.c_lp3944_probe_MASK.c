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
struct lp3944_platform_data {int dummy; } ;
struct lp3944_data {int /*<<< orphan*/  lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct lp3944_platform_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct lp3944_data* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct lp3944_data*) ; 
 int FUNC6 (struct i2c_client*,struct lp3944_data*,struct lp3944_platform_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
				  const struct i2c_device_id *id)
{
	struct lp3944_platform_data *lp3944_pdata =
			FUNC1(&client->dev);
	struct lp3944_data *data;
	int err;

	if (lp3944_pdata == NULL) {
		FUNC0(&client->dev, "no platform data\n");
		return -EINVAL;
	}

	/* Let's see whether this adapter can support what we need. */
	if (!FUNC4(client->adapter,
				I2C_FUNC_SMBUS_BYTE_DATA)) {
		FUNC0(&client->dev, "insufficient functionality!\n");
		return -ENODEV;
	}

	data = FUNC3(&client->dev, sizeof(struct lp3944_data),
			GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->client = client;
	FUNC5(client, data);

	FUNC7(&data->lock);

	err = FUNC6(client, data, lp3944_pdata);
	if (err < 0)
		return err;

	FUNC2(&client->dev, "lp3944 enabled\n");
	return 0;
}