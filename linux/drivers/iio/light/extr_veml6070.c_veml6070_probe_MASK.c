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
struct veml6070_data {int config; int /*<<< orphan*/  client2; struct i2c_client* client1; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/  name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VEML6070_ADDR_DATA_LSB ; 
 int VEML6070_COMMAND_RSRVD ; 
 int VEML6070_COMMAND_SD ; 
 int /*<<< orphan*/  VEML6070_DRV_NAME ; 
 int VEML6070_IT_10 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC7 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct iio_dev*) ; 
 struct veml6070_data* FUNC10 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  veml6070_channels ; 
 int /*<<< orphan*/  veml6070_info ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	struct veml6070_data *data;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC4(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC10(indio_dev);
	FUNC6(client, indio_dev);
	data->client1 = client;
	FUNC11(&data->lock);

	indio_dev->dev.parent = &client->dev;
	indio_dev->info = &veml6070_info;
	indio_dev->channels = veml6070_channels;
	indio_dev->num_channels = FUNC0(veml6070_channels);
	indio_dev->name = VEML6070_DRV_NAME;
	indio_dev->modes = INDIO_DIRECT_MODE;

	data->client2 = FUNC5(client->adapter, VEML6070_ADDR_DATA_LSB);
	if (FUNC1(data->client2)) {
		FUNC3(&client->dev, "i2c device for second chip address failed\n");
		return FUNC2(data->client2);
	}

	data->config = VEML6070_IT_10 | VEML6070_COMMAND_RSRVD |
		VEML6070_COMMAND_SD;
	ret = FUNC7(data->client1, data->config);
	if (ret < 0)
		goto fail;

	ret = FUNC9(indio_dev);
	if (ret < 0)
		goto fail;

	return ret;

fail:
	FUNC8(data->client2);
	return ret;
}