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
struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct i2c_device_id {int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  adapter; struct device dev; } ;
struct hp03_priv {int /*<<< orphan*/  eeprom_client; int /*<<< orphan*/  eeprom_regmap; int /*<<< orphan*/  xclr_gpio; int /*<<< orphan*/  lock; struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  HP03_EEPROM_ADDR ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC5 (struct device*,int) ; 
 int /*<<< orphan*/  hp03_channels ; 
 int /*<<< orphan*/  hp03_info ; 
 int /*<<< orphan*/  hp03_regmap_config ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct iio_dev*) ; 
 struct hp03_priv* FUNC10 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client,
		      const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct iio_dev *indio_dev;
	struct hp03_priv *priv;
	int ret;

	indio_dev = FUNC5(dev, sizeof(*priv));
	if (!indio_dev)
		return -ENOMEM;

	priv = FUNC10(indio_dev);
	priv->client = client;
	FUNC11(&priv->lock);

	indio_dev->dev.parent = dev;
	indio_dev->name = id->name;
	indio_dev->channels = hp03_channels;
	indio_dev->num_channels = FUNC0(hp03_channels);
	indio_dev->info = &hp03_info;
	indio_dev->modes = INDIO_DIRECT_MODE;

	priv->xclr_gpio = FUNC4(dev, "xclr", 0, GPIOD_OUT_HIGH);
	if (FUNC1(priv->xclr_gpio)) {
		FUNC3(dev, "Failed to claim XCLR GPIO\n");
		ret = FUNC2(priv->xclr_gpio);
		return ret;
	}

	/*
	 * Allocate another device for the on-sensor EEPROM,
	 * which has it's dedicated I2C address and contains
	 * the calibration constants for the sensor.
	 */
	priv->eeprom_client = FUNC6(client->adapter, HP03_EEPROM_ADDR);
	if (FUNC1(priv->eeprom_client)) {
		FUNC3(dev, "New EEPROM I2C device failed\n");
		return FUNC2(priv->eeprom_client);
	}

	priv->eeprom_regmap = FUNC13(priv->eeprom_client,
					      &hp03_regmap_config);
	if (FUNC1(priv->eeprom_regmap)) {
		FUNC3(dev, "Failed to allocate EEPROM regmap\n");
		ret = FUNC2(priv->eeprom_regmap);
		goto err_cleanup_eeprom_client;
	}

	ret = FUNC9(indio_dev);
	if (ret) {
		FUNC3(dev, "Failed to register IIO device\n");
		goto err_cleanup_eeprom_regmap;
	}

	FUNC7(client, indio_dev);

	return 0;

err_cleanup_eeprom_regmap:
	FUNC12(priv->eeprom_regmap);

err_cleanup_eeprom_client:
	FUNC8(priv->eeprom_client);
	return ret;
}