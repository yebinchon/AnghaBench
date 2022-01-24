#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct regmap {int dummy; } ;
struct TYPE_3__ {struct device* parent; } ;
struct iio_dev {char const* name; TYPE_1__ dev; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct bmi160_data {struct regmap* regmap; } ;
typedef  enum bmi160_int_pin { ____Placeholder_bmi160_int_pin } bmi160_int_pin ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  bmi160_channels ; 
 int FUNC2 (struct bmi160_data*,int) ; 
 int /*<<< orphan*/  bmi160_chip_uninit ; 
 int FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  bmi160_info ; 
 char* FUNC4 (struct device*) ; 
 int FUNC5 (struct iio_dev*,int,int) ; 
 int /*<<< orphan*/  bmi160_trigger_handler ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,struct iio_dev*) ; 
 int FUNC9 (struct device*,int /*<<< orphan*/ ,struct bmi160_data*) ; 
 struct iio_dev* FUNC10 (struct device*,int) ; 
 int FUNC11 (struct device*,struct iio_dev*) ; 
 int FUNC12 (struct device*,struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iio_pollfunc_store_time ; 
 struct bmi160_data* FUNC13 (struct iio_dev*) ; 

int FUNC14(struct device *dev, struct regmap *regmap,
		      const char *name, bool use_spi)
{
	struct iio_dev *indio_dev;
	struct bmi160_data *data;
	int irq;
	enum bmi160_int_pin int_pin;
	int ret;

	indio_dev = FUNC10(dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC13(indio_dev);
	FUNC8(dev, indio_dev);
	data->regmap = regmap;

	ret = FUNC2(data, use_spi);
	if (ret)
		return ret;

	ret = FUNC9(dev, bmi160_chip_uninit, data);
	if (ret)
		return ret;

	if (!name && FUNC0(dev))
		name = FUNC4(dev);

	indio_dev->dev.parent = dev;
	indio_dev->channels = bmi160_channels;
	indio_dev->num_channels = FUNC1(bmi160_channels);
	indio_dev->name = name;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &bmi160_info;

	ret = FUNC12(dev, indio_dev,
					      iio_pollfunc_store_time,
					      bmi160_trigger_handler, NULL);
	if (ret)
		return ret;

	irq = FUNC3(dev->of_node, &int_pin);
	if (irq > 0) {
		ret = FUNC5(indio_dev, irq, int_pin);
		if (ret)
			FUNC6(&indio_dev->dev, "Failed to setup IRQ %d\n",
				irq);
	} else {
		FUNC7(&indio_dev->dev, "Not setting up IRQ trigger\n");
	}

	return FUNC11(dev, indio_dev);
}