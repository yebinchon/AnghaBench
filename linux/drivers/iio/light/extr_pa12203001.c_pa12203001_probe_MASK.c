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
struct pa12203001_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  map; struct i2c_client* client; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PA12203001_CHIP_DISABLE ; 
 int /*<<< orphan*/  PA12203001_CHIP_ENABLE ; 
 int /*<<< orphan*/  PA12203001_DRIVER_NAME ; 
 int /*<<< orphan*/  PA12203001_SLEEP_DELAY_MS ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC6 (struct iio_dev*) ; 
 struct pa12203001_data* FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pa12203001_channels ; 
 int /*<<< orphan*/  pa12203001_info ; 
 int FUNC9 (struct iio_dev*) ; 
 int FUNC10 (struct iio_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pa12203001_regmap_config ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct i2c_client *client,
			    const struct i2c_device_id *id)
{
	struct pa12203001_data *data;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC3(&client->dev,
					  sizeof(struct pa12203001_data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC7(indio_dev);
	FUNC5(client, indio_dev);
	data->client = client;

	data->map = FUNC4(client, &pa12203001_regmap_config);
	if (FUNC1(data->map))
		return FUNC2(data->map);

	FUNC8(&data->lock);

	indio_dev->dev.parent = &client->dev;
	indio_dev->info = &pa12203001_info;
	indio_dev->name = PA12203001_DRIVER_NAME;
	indio_dev->channels = pa12203001_channels;
	indio_dev->num_channels = FUNC0(pa12203001_channels);
	indio_dev->modes = INDIO_DIRECT_MODE;

	ret = FUNC9(indio_dev);
	if (ret < 0)
		return ret;

	ret = FUNC10(indio_dev, PA12203001_CHIP_ENABLE);
	if (ret < 0)
		return ret;

	ret = FUNC12(&client->dev);
	if (ret < 0)
		goto out_err;

	FUNC11(&client->dev);
	FUNC13(&client->dev,
					 PA12203001_SLEEP_DELAY_MS);
	FUNC14(&client->dev);

	ret = FUNC6(indio_dev);
	if (ret < 0)
		goto out_err;

	return 0;

out_err:
	FUNC10(indio_dev, PA12203001_CHIP_DISABLE);
	return ret;
}