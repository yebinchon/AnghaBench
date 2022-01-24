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
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 struct iio_dev* FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct st_sensor_data* FUNC3 (struct iio_dev*) ; 
 int FUNC4 (struct iio_dev*) ; 
 struct st_sensor_settings* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct iio_dev*,struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client)
{
	const struct st_sensor_settings *settings;
	struct st_sensor_data *adata;
	struct iio_dev *indio_dev;
	const char *match;
	int ret;

	match = FUNC1(&client->dev);
	if (match)
		FUNC7(client->name, match, sizeof(client->name));

	settings = FUNC5(client->name);
	if (!settings) {
		FUNC0(&client->dev, "device name %s not recognized.\n",
			client->name);
		return -ENODEV;
	}

	indio_dev = FUNC2(&client->dev, sizeof(*adata));
	if (!indio_dev)
		return -ENOMEM;

	adata = FUNC3(indio_dev);
	adata->sensor_settings = (struct st_sensor_settings *)settings;

	ret = FUNC6(indio_dev, client);
	if (ret < 0)
		return ret;

	ret = FUNC4(indio_dev);
	if (ret < 0)
		return ret;

	return 0;
}