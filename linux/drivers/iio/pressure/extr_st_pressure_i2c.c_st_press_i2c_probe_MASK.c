#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct st_sensor_settings {int dummy; } ;
struct st_sensor_data {struct st_sensor_settings* sensor_settings; } ;
struct iio_dev {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_7__ {scalar_t__ of_node; } ;
struct i2c_client {TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ST_PRESS_MAX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC2 (TYPE_1__*,int) ; 
 struct st_sensor_data* FUNC3 (struct iio_dev*) ; 
 int FUNC4 (struct iio_dev*) ; 
 struct st_sensor_settings* FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_3__* st_press_id_table ; 
 int /*<<< orphan*/  st_press_of_match ; 
 int FUNC6 (struct iio_dev*,struct i2c_client*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
			      const struct i2c_device_id *id)
{
	const struct st_sensor_settings *settings;
	struct st_sensor_data *press_data;
	struct iio_dev *indio_dev;
	int ret;

	if (client->dev.of_node) {
		FUNC8(&client->dev, st_press_of_match,
					 client->name, sizeof(client->name));
	} else if (FUNC0(&client->dev)) {
		ret = FUNC7(&client->dev);
		if ((ret < 0) || (ret >= ST_PRESS_MAX))
			return -ENODEV;

		FUNC9(client->name, st_press_id_table[ret].name,
			sizeof(client->name));
	} else if (!id)
		return -ENODEV;

	settings = FUNC5(client->name);
	if (!settings) {
		FUNC1(&client->dev, "device name %s not recognized.\n",
			client->name);
		return -ENODEV;
	}

	indio_dev = FUNC2(&client->dev, sizeof(*press_data));
	if (!indio_dev)
		return -ENOMEM;

	press_data = FUNC3(indio_dev);
	press_data->sensor_settings = (struct st_sensor_settings *)settings;

	ret = FUNC6(indio_dev, client);
	if (ret < 0)
		return ret;

	ret = FUNC4(indio_dev);
	if (ret < 0)
		return ret;

	return 0;
}