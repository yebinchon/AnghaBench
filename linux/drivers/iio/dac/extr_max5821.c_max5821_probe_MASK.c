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
typedef  size_t u32 ;
struct max5821_data {int* powerdown; int vref_mv; int /*<<< orphan*/  vref_reg; int /*<<< orphan*/ * powerdown_mode; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  channels; int /*<<< orphan*/  num_channels; TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct i2c_device_id {int /*<<< orphan*/  name; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX5821_100KOHM_TO_GND ; 
 size_t MAX5821_MAX_DAC_CHANNELS ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 struct iio_dev* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC7 (struct iio_dev*) ; 
 struct max5821_data* FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  max5821_channels ; 
 int /*<<< orphan*/  max5821_info ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct max5821_data *data;
	struct iio_dev *indio_dev;
	u32 tmp;
	int ret;

	indio_dev = FUNC4(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;
	data = FUNC8(indio_dev);
	FUNC6(client, indio_dev);
	data->client = client;
	FUNC9(&data->lock);

	/* max5821 start in powerdown mode 100Kohm to ground */
	for (tmp = 0; tmp < MAX5821_MAX_DAC_CHANNELS; tmp++) {
		data->powerdown[tmp] = true;
		data->powerdown_mode[tmp] = MAX5821_100KOHM_TO_GND;
	}

	data->vref_reg = FUNC5(&client->dev, "vref");
	if (FUNC1(data->vref_reg)) {
		ret = FUNC2(data->vref_reg);
		FUNC3(&client->dev,
			"Failed to get vref regulator: %d\n", ret);
		goto error_free_reg;
	}

	ret = FUNC11(data->vref_reg);
	if (ret) {
		FUNC3(&client->dev,
			"Failed to enable vref regulator: %d\n", ret);
		goto error_free_reg;
	}

	ret = FUNC12(data->vref_reg);
	if (ret < 0) {
		FUNC3(&client->dev,
			"Failed to get voltage on regulator: %d\n", ret);
		goto error_disable_reg;
	}

	data->vref_mv = ret / 1000;

	indio_dev->name = id->name;
	indio_dev->dev.parent = &client->dev;
	indio_dev->num_channels = FUNC0(max5821_channels);
	indio_dev->channels = max5821_channels;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &max5821_info;

	return FUNC7(indio_dev);

error_disable_reg:
	FUNC10(data->vref_reg);

error_free_reg:

	return ret;
}