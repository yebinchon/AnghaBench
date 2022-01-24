#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct st_sensor_data {int /*<<< orphan*/  irq; int /*<<< orphan*/ * dev; int /*<<< orphan*/  regmap; TYPE_1__* sensor_settings; } ;
struct regmap_config {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  name; TYPE_2__ dev; } ;
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {scalar_t__ multi_read_bit; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct regmap_config const*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct iio_dev*) ; 
 struct st_sensor_data* FUNC5 (struct iio_dev*) ; 
 struct regmap_config st_sensors_i2c_regmap_config ; 
 struct regmap_config st_sensors_i2c_regmap_multiread_bit_config ; 

int FUNC6(struct iio_dev *indio_dev,
			     struct i2c_client *client)
{
	struct st_sensor_data *sdata = FUNC5(indio_dev);
	const struct regmap_config *config;

	if (sdata->sensor_settings->multi_read_bit)
		config = &st_sensors_i2c_regmap_multiread_bit_config;
	else
		config = &st_sensors_i2c_regmap_config;

	sdata->regmap = FUNC3(client, config);
	if (FUNC0(sdata->regmap)) {
		FUNC2(&client->dev, "Failed to register i2c regmap (%d)\n",
			(int)FUNC1(sdata->regmap));
		return FUNC1(sdata->regmap);
	}

	FUNC4(client, indio_dev);

	indio_dev->dev.parent = &client->dev;
	indio_dev->name = client->name;

	sdata->dev = &client->dev;
	sdata->irq = client->irq;

	return 0;
}