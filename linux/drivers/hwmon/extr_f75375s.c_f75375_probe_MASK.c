#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {scalar_t__ driver_data; } ;
struct TYPE_12__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_5__ dev; int /*<<< orphan*/  adapter; } ;
struct f75375s_platform_data {int dummy; } ;
struct f75375_data {scalar_t__ kind; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  update_lock; } ;
struct TYPE_8__ {int /*<<< orphan*/  attr; } ;
struct TYPE_11__ {TYPE_1__ dev_attr; } ;
struct TYPE_9__ {int /*<<< orphan*/  attr; } ;
struct TYPE_10__ {TYPE_2__ dev_attr; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int S_IRUGO ; 
 int S_IWUSR ; 
 struct f75375s_platform_data* FUNC2 (TYPE_5__*) ; 
 struct f75375_data* FUNC3 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ f75373 ; 
 int /*<<< orphan*/  f75375_group ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct f75375_data*,struct f75375s_platform_data*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct f75375_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_4__ sensor_dev_attr_pwm1_mode ; 
 TYPE_3__ sensor_dev_attr_pwm2_mode ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
		const struct i2c_device_id *id)
{
	struct f75375_data *data;
	struct f75375s_platform_data *f75375s_pdata =
			FUNC2(&client->dev);
	int err;

	if (!FUNC6(client->adapter,
				I2C_FUNC_SMBUS_BYTE_DATA))
		return -EIO;
	data = FUNC3(&client->dev, sizeof(struct f75375_data),
			    GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC7(client, data);
	FUNC8(&data->update_lock);
	data->kind = id->driver_data;

	err = FUNC10(&client->dev.kobj, &f75375_group);
	if (err)
		return err;

	if (data->kind != f75373) {
		err = FUNC9(&client->dev.kobj,
			&sensor_dev_attr_pwm1_mode.dev_attr.attr,
			S_IRUGO | S_IWUSR);
		if (err)
			goto exit_remove;
		err = FUNC9(&client->dev.kobj,
			&sensor_dev_attr_pwm2_mode.dev_attr.attr,
			S_IRUGO | S_IWUSR);
		if (err)
			goto exit_remove;
	}

	data->hwmon_dev = FUNC5(&client->dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto exit_remove;
	}

	FUNC4(client, data, f75375s_pdata);

	return 0;

exit_remove:
	FUNC11(&client->dev.kobj, &f75375_group);
	return err;
}