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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  available_scan_masks; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct bma220_data {struct spi_device* spi_device; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BMA220_DEVICE_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  bma220_accel_scan_masks ; 
 int /*<<< orphan*/  bma220_channels ; 
 int FUNC1 (struct spi_device*) ; 
 int /*<<< orphan*/  bma220_info ; 
 int FUNC2 (struct spi_device*) ; 
 int /*<<< orphan*/  bma220_trigger_handler ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  iio_pollfunc_store_time ; 
 struct bma220_data* FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct iio_dev*) ; 
 int FUNC8 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC11(struct spi_device *spi)
{
	int ret;
	struct iio_dev *indio_dev;
	struct bma220_data *data;

	indio_dev = FUNC4(&spi->dev, sizeof(*data));
	if (!indio_dev) {
		FUNC3(&spi->dev, "iio allocation failed!\n");
		return -ENOMEM;
	}

	data = FUNC6(indio_dev);
	data->spi_device = spi;
	FUNC10(spi, indio_dev);
	FUNC9(&data->lock);

	indio_dev->dev.parent = &spi->dev;
	indio_dev->info = &bma220_info;
	indio_dev->name = BMA220_DEVICE_NAME;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = bma220_channels;
	indio_dev->num_channels = FUNC0(bma220_channels);
	indio_dev->available_scan_masks = bma220_accel_scan_masks;

	ret = FUNC2(data->spi_device);
	if (ret < 0)
		return ret;

	ret = FUNC8(indio_dev, iio_pollfunc_store_time,
					 bma220_trigger_handler, NULL);
	if (ret < 0) {
		FUNC3(&spi->dev, "iio triggered buffer setup failed\n");
		goto err_suspend;
	}

	ret = FUNC5(indio_dev);
	if (ret < 0) {
		FUNC3(&spi->dev, "iio_device_register failed\n");
		FUNC7(indio_dev);
		goto err_suspend;
	}

	return 0;

err_suspend:
	return FUNC1(spi);
}