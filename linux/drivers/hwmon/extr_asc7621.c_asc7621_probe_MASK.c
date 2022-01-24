#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;
struct asc7621_data {int /*<<< orphan*/  class_dev; int /*<<< orphan*/  update_lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev_attr; } ;
struct TYPE_5__ {TYPE_1__ sda; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*) ; 
 TYPE_2__* asc7621_params ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct asc7621_data* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct asc7621_data*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(struct i2c_client *client, const struct i2c_device_id *id)
{
	struct asc7621_data *data;
	int i, err;

	if (!FUNC8(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -EIO;

	data = FUNC6(&client->dev, sizeof(struct asc7621_data),
			    GFP_KERNEL);
	if (data == NULL)
		return -ENOMEM;

	FUNC9(client, data);
	FUNC10(&data->update_lock);

	/* Initialize the asc7621 chip */
	FUNC3(client);

	/* Create the sysfs entries */
	for (i = 0; i < FUNC0(asc7621_params); i++) {
		err =
		    FUNC4(&client->dev,
				       &(asc7621_params[i].sda.dev_attr));
		if (err)
			goto exit_remove;
	}

	data->class_dev = FUNC7(&client->dev);
	if (FUNC1(data->class_dev)) {
		err = FUNC2(data->class_dev);
		goto exit_remove;
	}

	return 0;

exit_remove:
	for (i = 0; i < FUNC0(asc7621_params); i++) {
		FUNC5(&client->dev,
				   &(asc7621_params[i].sda.dev_attr));
	}

	return err;
}