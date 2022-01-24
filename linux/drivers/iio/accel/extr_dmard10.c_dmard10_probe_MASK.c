#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {char* name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct dmard10_data {struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMARD10_REG_STADR ; 
 int /*<<< orphan*/  DMARD10_REG_STAINT ; 
 int DMARD10_VALUE_STADR ; 
 int DMARD10_VALUE_STAINT ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  dmard10_channels ; 
 int /*<<< orphan*/  dmard10_info ; 
 int FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct iio_dev*) ; 
 struct dmard10_data* FUNC8 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	int ret;
	struct iio_dev *indio_dev;
	struct dmard10_data *data;

	/* These 2 registers have special POR reset values used for id */
	ret = FUNC6(client, DMARD10_REG_STADR);
	if (ret != DMARD10_VALUE_STADR)
		return (ret < 0) ? ret : -ENODEV;

	ret = FUNC6(client, DMARD10_REG_STAINT);
	if (ret != DMARD10_VALUE_STAINT)
		return (ret < 0) ? ret : -ENODEV;

	indio_dev = FUNC2(&client->dev, sizeof(*data));
	if (!indio_dev) {
		FUNC1(&client->dev, "iio allocation failed!\n");
		return -ENOMEM;
	}

	data = FUNC8(indio_dev);
	data->client = client;
	FUNC5(client, indio_dev);

	indio_dev->dev.parent = &client->dev;
	indio_dev->info = &dmard10_info;
	indio_dev->name = "dmard10";
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = dmard10_channels;
	indio_dev->num_channels = FUNC0(dmard10_channels);

	ret = FUNC3(client);
	if (ret < 0)
		return ret;

	ret = FUNC7(indio_dev);
	if (ret < 0) {
		FUNC1(&client->dev, "device_register failed\n");
		FUNC4(client);
	}

	return ret;
}