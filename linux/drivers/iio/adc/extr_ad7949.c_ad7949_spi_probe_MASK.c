#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  of_node; } ;
struct spi_device {struct device dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; struct device* parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct ad7949_adc_spec {int /*<<< orphan*/  resolution; int /*<<< orphan*/  num_channels; } ;
struct ad7949_adc_chip {int /*<<< orphan*/  vref; int /*<<< orphan*/  lock; int /*<<< orphan*/  resolution; struct spi_device* spi; struct iio_dev* indio_dev; } ;
struct TYPE_4__ {size_t driver_data; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ad7949_adc_channels ; 
 struct ad7949_adc_spec* ad7949_adc_spec ; 
 int /*<<< orphan*/  ad7949_spi_info ; 
 int FUNC2 (struct ad7949_adc_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 struct iio_dev* FUNC4 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int FUNC6 (struct iio_dev*) ; 
 struct ad7949_adc_chip* FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC12 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC14(struct spi_device *spi)
{
	struct device *dev = &spi->dev;
	const struct ad7949_adc_spec *spec;
	struct ad7949_adc_chip *ad7949_adc;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC4(dev, sizeof(*ad7949_adc));
	if (!indio_dev) {
		FUNC3(dev, "can not allocate iio device\n");
		return -ENOMEM;
	}

	indio_dev->dev.parent = dev;
	indio_dev->dev.of_node = dev->of_node;
	indio_dev->info = &ad7949_spi_info;
	indio_dev->name = FUNC12(spi)->name;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = ad7949_adc_channels;
	FUNC13(spi, indio_dev);

	ad7949_adc = FUNC7(indio_dev);
	ad7949_adc->indio_dev = indio_dev;
	ad7949_adc->spi = spi;

	spec = &ad7949_adc_spec[FUNC12(spi)->driver_data];
	indio_dev->num_channels = spec->num_channels;
	ad7949_adc->resolution = spec->resolution;

	ad7949_adc->vref = FUNC5(dev, "vref");
	if (FUNC0(ad7949_adc->vref)) {
		FUNC3(dev, "fail to request regulator\n");
		return FUNC1(ad7949_adc->vref);
	}

	ret = FUNC11(ad7949_adc->vref);
	if (ret < 0) {
		FUNC3(dev, "fail to enable regulator\n");
		return ret;
	}

	FUNC9(&ad7949_adc->lock);

	ret = FUNC2(ad7949_adc);
	if (ret) {
		FUNC3(dev, "enable to init this device: %d\n", ret);
		goto err;
	}

	ret = FUNC6(indio_dev);
	if (ret) {
		FUNC3(dev, "fail to register iio device: %d\n", ret);
		goto err;
	}

	return 0;

err:
	FUNC8(&ad7949_adc->lock);
	FUNC10(ad7949_adc->vref);

	return ret;
}