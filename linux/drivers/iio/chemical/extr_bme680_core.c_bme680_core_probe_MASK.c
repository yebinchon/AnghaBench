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
struct regmap {int dummy; } ;
struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {char const* name; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct bme680_data {int oversampling_humid; int oversampling_press; int oversampling_temp; int heater_temp; int heater_dur; int /*<<< orphan*/  bme680; struct regmap* regmap; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int BME680_CHIP_ID_VAL ; 
 int /*<<< orphan*/  BME680_CMD_SOFTRESET ; 
 int /*<<< orphan*/  BME680_REG_CHIP_ID ; 
 int /*<<< orphan*/  BME680_REG_SOFT_RESET ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  bme680_channels ; 
 int FUNC2 (struct bme680_data*) ; 
 int FUNC3 (struct bme680_data*) ; 
 int /*<<< orphan*/  bme680_info ; 
 char* FUNC4 (struct device*) ; 
 int FUNC5 (struct bme680_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct iio_dev*) ; 
 struct iio_dev* FUNC8 (struct device*,int) ; 
 int FUNC9 (struct device*,struct iio_dev*) ; 
 struct bme680_data* FUNC10 (struct iio_dev*) ; 
 int FUNC11 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC12 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC13(struct device *dev, struct regmap *regmap,
		      const char *name)
{
	struct iio_dev *indio_dev;
	struct bme680_data *data;
	unsigned int val;
	int ret;

	ret = FUNC12(regmap, BME680_REG_SOFT_RESET,
			   BME680_CMD_SOFTRESET);
	if (ret < 0) {
		FUNC6(dev, "Failed to reset chip\n");
		return ret;
	}

	ret = FUNC11(regmap, BME680_REG_CHIP_ID, &val);
	if (ret < 0) {
		FUNC6(dev, "Error reading chip ID\n");
		return ret;
	}

	if (val != BME680_CHIP_ID_VAL) {
		FUNC6(dev, "Wrong chip ID, got %x expected %x\n",
				val, BME680_CHIP_ID_VAL);
		return -ENODEV;
	}

	indio_dev = FUNC8(dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	if (!name && FUNC0(dev))
		name = FUNC4(dev);

	data = FUNC10(indio_dev);
	FUNC7(dev, indio_dev);
	data->regmap = regmap;
	indio_dev->dev.parent = dev;
	indio_dev->name = name;
	indio_dev->channels = bme680_channels;
	indio_dev->num_channels = FUNC1(bme680_channels);
	indio_dev->info = &bme680_info;
	indio_dev->modes = INDIO_DIRECT_MODE;

	/* default values for the sensor */
	data->oversampling_humid = 2; /* 2X oversampling rate */
	data->oversampling_press = 4; /* 4X oversampling rate */
	data->oversampling_temp = 8;  /* 8X oversampling rate */
	data->heater_temp = 320; /* degree Celsius */
	data->heater_dur = 150;  /* milliseconds */

	ret = FUNC2(data);
	if (ret < 0) {
		FUNC6(dev, "failed to set chip_config data\n");
		return ret;
	}

	ret = FUNC3(data);
	if (ret < 0) {
		FUNC6(dev, "failed to set gas config data\n");
		return ret;
	}

	ret = FUNC5(data, &data->bme680);
	if (ret < 0) {
		FUNC6(dev,
			"failed to read calibration coefficients at probe\n");
		return ret;
	}

	return FUNC9(dev, indio_dev);
}