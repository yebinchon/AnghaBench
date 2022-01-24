#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* parent; int /*<<< orphan*/  of_node; } ;
struct iio_dev {int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  channels; int /*<<< orphan*/  num_channels; TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct i2c_device_id {int driver_data; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct ds4424_data {int /*<<< orphan*/  vcc_reg; int /*<<< orphan*/  lock; struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS4422_MAX_DAC_CHANNELS ; 
 int /*<<< orphan*/  DS4424_MAX_DAC_CHANNELS ; 
 int ENOMEM ; 
 int ENXIO ; 
#define  ID_DS4422 129 
#define  ID_DS4424 128 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,...) ; 
 struct iio_dev* FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  ds4424_channels ; 
 int /*<<< orphan*/  ds4424_info ; 
 int FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC7 (struct iio_dev*) ; 
 struct ds4424_data* FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 

__attribute__((used)) static int FUNC13(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct ds4424_data *data;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC3(&client->dev, sizeof(*data));
	if (!indio_dev) {
		FUNC2(&client->dev, "iio dev alloc failed.\n");
		return -ENOMEM;
	}

	data = FUNC8(indio_dev);
	FUNC6(client, indio_dev);
	data->client = client;
	indio_dev->name = id->name;
	indio_dev->dev.of_node = client->dev.of_node;
	indio_dev->dev.parent = &client->dev;

	data->vcc_reg = FUNC4(&client->dev, "vcc");
	if (FUNC0(data->vcc_reg)) {
		FUNC2(&client->dev,
			"Failed to get vcc-supply regulator. err: %ld\n",
				FUNC1(data->vcc_reg));
		return FUNC1(data->vcc_reg);
	}

	FUNC9(&data->lock);
	ret = FUNC11(data->vcc_reg);
	if (ret < 0) {
		FUNC2(&client->dev,
				"Unable to enable the regulator.\n");
		return ret;
	}

	FUNC12(1000, 1200);
	ret = FUNC5(indio_dev);
	if (ret < 0)
		goto fail;

	switch (id->driver_data) {
	case ID_DS4422:
		indio_dev->num_channels = DS4422_MAX_DAC_CHANNELS;
		break;
	case ID_DS4424:
		indio_dev->num_channels = DS4424_MAX_DAC_CHANNELS;
		break;
	default:
		FUNC2(&client->dev,
				"ds4424: Invalid chip id.\n");
		ret = -ENXIO;
		goto fail;
	}

	indio_dev->channels = ds4424_channels;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &ds4424_info;

	ret = FUNC7(indio_dev);
	if (ret < 0) {
		FUNC2(&client->dev,
				"iio_device_register failed. ret: %d\n", ret);
		goto fail;
	}

	return ret;

fail:
	FUNC10(data->vcc_reg);
	return ret;
}