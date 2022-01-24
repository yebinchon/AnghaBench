#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct regmap {int dummy; } ;
struct TYPE_6__ {struct device* parent; } ;
struct iio_dev {char const* name; int num_channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  channels; TYPE_1__ dev; } ;
struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  bmp280; int /*<<< orphan*/  bmp180; } ;
struct bmp280_data {int start_up_time; struct gpio_desc* vddd; struct gpio_desc* vdda; struct device* dev; TYPE_2__ calib; TYPE_3__* chip_info; struct regmap* regmap; void* oversampling_temp; void* oversampling_humid; void* oversampling_press; int /*<<< orphan*/  lock; } ;
struct TYPE_8__ {int (* chip_config ) (struct bmp280_data*) ;} ;

/* Variables and functions */
#define  BME280_CHIP_ID 130 
#define  BMP180_CHIP_ID 129 
#define  BMP280_CHIP_ID 128 
 int /*<<< orphan*/  BMP280_REG_ID ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 int FUNC1 (struct gpio_desc*) ; 
 TYPE_3__ bme280_chip_info ; 
 int FUNC2 (struct device*,char const*,int,struct bmp280_data*) ; 
 TYPE_3__ bmp180_chip_info ; 
 int FUNC3 (struct bmp280_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bmp280_channels ; 
 TYPE_3__ bmp280_chip_info ; 
 int /*<<< orphan*/  bmp280_info ; 
 int FUNC4 (struct bmp280_data*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct iio_dev*) ; 
 struct gpio_desc* FUNC8 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC9 (struct device*,int) ; 
 void* FUNC10 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct gpio_desc*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct iio_dev*) ; 
 struct bmp280_data* FUNC13 (struct iio_dev*) ; 
 void* FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct device*) ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 
 int /*<<< orphan*/  FUNC18 (struct device*) ; 
 int /*<<< orphan*/  FUNC19 (struct device*) ; 
 int /*<<< orphan*/  FUNC20 (struct device*) ; 
 int /*<<< orphan*/  FUNC21 (struct device*) ; 
 int /*<<< orphan*/  FUNC22 (struct device*) ; 
 int /*<<< orphan*/  FUNC23 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct device*) ; 
 int FUNC25 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC26 (struct gpio_desc*) ; 
 int FUNC27 (struct gpio_desc*) ; 
 int FUNC28 (struct bmp280_data*) ; 
 int /*<<< orphan*/  FUNC29 (int,int) ; 

int FUNC30(struct device *dev,
			struct regmap *regmap,
			unsigned int chip,
			const char *name,
			int irq)
{
	int ret;
	struct iio_dev *indio_dev;
	struct bmp280_data *data;
	unsigned int chip_id;
	struct gpio_desc *gpiod;

	indio_dev = FUNC9(dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC13(indio_dev);
	FUNC15(&data->lock);
	data->dev = dev;

	indio_dev->dev.parent = dev;
	indio_dev->name = name;
	indio_dev->channels = bmp280_channels;
	indio_dev->info = &bmp280_info;
	indio_dev->modes = INDIO_DIRECT_MODE;

	switch (chip) {
	case BMP180_CHIP_ID:
		indio_dev->num_channels = 2;
		data->chip_info = &bmp180_chip_info;
		data->oversampling_press = FUNC14(8);
		data->oversampling_temp = FUNC14(1);
		data->start_up_time = 10000;
		break;
	case BMP280_CHIP_ID:
		indio_dev->num_channels = 2;
		data->chip_info = &bmp280_chip_info;
		data->oversampling_press = FUNC14(16);
		data->oversampling_temp = FUNC14(2);
		data->start_up_time = 2000;
		break;
	case BME280_CHIP_ID:
		indio_dev->num_channels = 3;
		data->chip_info = &bme280_chip_info;
		data->oversampling_press = FUNC14(16);
		data->oversampling_humid = FUNC14(16);
		data->oversampling_temp = FUNC14(2);
		data->start_up_time = 2000;
		break;
	default:
		return -EINVAL;
	}

	/* Bring up regulators */
	data->vddd = FUNC10(dev, "vddd");
	if (FUNC0(data->vddd)) {
		FUNC5(dev, "failed to get VDDD regulator\n");
		return FUNC1(data->vddd);
	}
	ret = FUNC27(data->vddd);
	if (ret) {
		FUNC5(dev, "failed to enable VDDD regulator\n");
		return ret;
	}
	data->vdda = FUNC10(dev, "vdda");
	if (FUNC0(data->vdda)) {
		FUNC5(dev, "failed to get VDDA regulator\n");
		ret = FUNC1(data->vdda);
		goto out_disable_vddd;
	}
	ret = FUNC27(data->vdda);
	if (ret) {
		FUNC5(dev, "failed to enable VDDA regulator\n");
		goto out_disable_vddd;
	}
	/* Wait to make sure we started up properly */
	FUNC29(data->start_up_time, data->start_up_time + 100);

	/* Bring chip out of reset if there is an assigned GPIO line */
	gpiod = FUNC8(dev, "reset", GPIOD_OUT_HIGH);
	/* Deassert the signal */
	if (!FUNC0(gpiod)) {
		FUNC6(dev, "release reset\n");
		FUNC11(gpiod, 0);
	}

	data->regmap = regmap;
	ret = FUNC25(regmap, BMP280_REG_ID, &chip_id);
	if (ret < 0)
		goto out_disable_vdda;
	if (chip_id != chip) {
		FUNC5(dev, "bad chip id: expected %x got %x\n",
			chip, chip_id);
		ret = -EINVAL;
		goto out_disable_vdda;
	}

	ret = data->chip_info->chip_config(data);
	if (ret < 0)
		goto out_disable_vdda;

	FUNC7(dev, indio_dev);

	/*
	 * Some chips have calibration parameters "programmed into the devices'
	 * non-volatile memory during production". Let's read them out at probe
	 * time once. They will not change.
	 */
	if (chip_id  == BMP180_CHIP_ID) {
		ret = FUNC3(data, &data->calib.bmp180);
		if (ret < 0) {
			FUNC5(data->dev,
				"failed to read calibration coefficients\n");
			goto out_disable_vdda;
		}
	} else if (chip_id == BMP280_CHIP_ID || chip_id == BME280_CHIP_ID) {
		ret = FUNC4(data, &data->calib.bmp280, chip_id);
		if (ret < 0) {
			FUNC5(data->dev,
				"failed to read calibration coefficients\n");
			goto out_disable_vdda;
		}
	}

	/*
	 * Attempt to grab an optional EOC IRQ - only the BMP085 has this
	 * however as it happens, the BMP085 shares the chip ID of BMP180
	 * so we look for an IRQ if we have that.
	 */
	if (irq > 0 || (chip_id  == BMP180_CHIP_ID)) {
		ret = FUNC2(dev, name, irq, data);
		if (ret)
			goto out_disable_vdda;
	}

	/* Enable runtime PM */
	FUNC18(dev);
	FUNC22(dev);
	FUNC17(dev);
	/*
	 * Set autosuspend to two orders of magnitude larger than the
	 * start-up time.
	 */
	FUNC23(dev, data->start_up_time / 10);
	FUNC24(dev);
	FUNC20(dev);

	ret = FUNC12(indio_dev);
	if (ret)
		goto out_runtime_pm_disable;


	return 0;

out_runtime_pm_disable:
	FUNC19(data->dev);
	FUNC21(data->dev);
	FUNC16(data->dev);
out_disable_vdda:
	FUNC26(data->vdda);
out_disable_vddd:
	FUNC26(data->vddd);
	return ret;
}