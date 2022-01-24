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
struct iio_dev {int /*<<< orphan*/ * info; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;
struct dmard06_data {int chip_id; struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DMARD05_CHIP_ID ; 
 int DMARD06_CHIP_ID ; 
 int /*<<< orphan*/  DMARD06_CHIP_ID_REG ; 
 int /*<<< orphan*/  DMARD06_DRV_NAME ; 
 int DMARD07_CHIP_ID ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 struct iio_dev* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 int /*<<< orphan*/  dmard06_channels ; 
 int /*<<< orphan*/  dmard06_info ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct dmard06_data* FUNC7 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	int ret;
	struct iio_dev *indio_dev;
	struct dmard06_data *dmard06;

	if (!FUNC4(client->adapter, I2C_FUNC_I2C)) {
		FUNC1(&client->dev, "I2C check functionality failed\n");
		return -ENXIO;
	}

	indio_dev = FUNC2(&client->dev, sizeof(*dmard06));
	if (!indio_dev) {
		FUNC1(&client->dev, "Failed to allocate iio device\n");
		return -ENOMEM;
	}

	dmard06 = FUNC7(indio_dev);
	dmard06->client = client;

	ret = FUNC6(dmard06->client, DMARD06_CHIP_ID_REG);
	if (ret < 0) {
		FUNC1(&client->dev, "Error reading chip id: %d\n", ret);
		return ret;
	}

	if (ret != DMARD05_CHIP_ID && ret != DMARD06_CHIP_ID &&
	    ret != DMARD07_CHIP_ID) {
		FUNC1(&client->dev, "Invalid chip id: %02d\n", ret);
		return -ENODEV;
	}

	dmard06->chip_id = ret;

	FUNC5(client, indio_dev);
	indio_dev->dev.parent = &client->dev;
	indio_dev->name = DMARD06_DRV_NAME;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = dmard06_channels;
	indio_dev->num_channels = FUNC0(dmard06_channels);
	indio_dev->info = &dmard06_info;

	return FUNC3(&client->dev, indio_dev);
}