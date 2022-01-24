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
struct ti_dac_spec {int /*<<< orphan*/  resolution; } ;
struct ti_dac_chip {int powerdown; int /*<<< orphan*/  vref; int /*<<< orphan*/  lock; int /*<<< orphan*/  resolution; struct spi_device* spi; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct spi_device {int bits_per_word; struct device dev; int /*<<< orphan*/  mode; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; struct device* parent; } ;
struct iio_dev {int num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct TYPE_4__ {size_t driver_data; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_MODE_1 ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 struct iio_dev* FUNC3 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int FUNC5 (struct iio_dev*) ; 
 struct ti_dac_chip* FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC11 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct spi_device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct spi_device*) ; 
 int /*<<< orphan*/  ti_dac_channels ; 
 int /*<<< orphan*/  ti_dac_info ; 
 struct ti_dac_spec* ti_dac_spec ; 

__attribute__((used)) static int FUNC14(struct spi_device *spi)
{
	struct device *dev = &spi->dev;
	const struct ti_dac_spec *spec;
	struct ti_dac_chip *ti_dac;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC3(dev, sizeof(*ti_dac));
	if (!indio_dev) {
		FUNC2(dev, "can not allocate iio device\n");
		return -ENOMEM;
	}

	spi->mode = SPI_MODE_1;
	spi->bits_per_word = 16;
	FUNC13(spi);

	indio_dev->dev.parent = dev;
	indio_dev->dev.of_node = spi->dev.of_node;
	indio_dev->info = &ti_dac_info;
	indio_dev->name = FUNC11(spi)->name;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = ti_dac_channels;
	FUNC12(spi, indio_dev);

	ti_dac = FUNC6(indio_dev);
	ti_dac->powerdown = false;
	ti_dac->spi = spi;

	spec = &ti_dac_spec[FUNC11(spi)->driver_data];
	indio_dev->num_channels = 1;
	ti_dac->resolution = spec->resolution;

	ti_dac->vref = FUNC4(dev, "vref");
	if (FUNC0(ti_dac->vref)) {
		FUNC2(dev, "error to get regulator\n");
		return FUNC1(ti_dac->vref);
	}

	ret = FUNC10(ti_dac->vref);
	if (ret < 0) {
		FUNC2(dev, "can not enable regulator\n");
		return ret;
	}

	FUNC8(&ti_dac->lock);

	ret = FUNC5(indio_dev);
	if (ret) {
		FUNC2(dev, "fail to register iio device: %d\n", ret);
		goto err;
	}

	return 0;

err:
	FUNC7(&ti_dac->lock);
	FUNC9(ti_dac->vref);
	return ret;
}