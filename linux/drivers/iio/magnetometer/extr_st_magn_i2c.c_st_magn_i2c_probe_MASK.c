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
struct st_sensor_settings {int dummy; } ;
struct st_sensor_data {struct st_sensor_settings* sensor_settings; } ;
struct iio_dev {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct st_sensor_data* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (struct iio_dev*) ; 
 struct st_sensor_settings* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  st_magn_of_match ; 
 int FUNC5 (struct iio_dev*,struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client,
			     const struct i2c_device_id *id)
{
	const struct st_sensor_settings *settings;
	struct st_sensor_data *mdata;
	struct iio_dev *indio_dev;
	int err;

	FUNC6(&client->dev, st_magn_of_match,
				 client->name, sizeof(client->name));

	settings = FUNC4(client->name);
	if (!settings) {
		FUNC0(&client->dev, "device name %s not recognized.\n",
			client->name);
		return -ENODEV;
	}

	indio_dev = FUNC1(&client->dev, sizeof(*mdata));
	if (!indio_dev)
		return -ENOMEM;

	mdata = FUNC2(indio_dev);
	mdata->sensor_settings = (struct st_sensor_settings *)settings;

	err = FUNC5(indio_dev, client);
	if (err < 0)
		return err;

	err = FUNC3(indio_dev);
	if (err < 0)
		return err;

	return 0;
}