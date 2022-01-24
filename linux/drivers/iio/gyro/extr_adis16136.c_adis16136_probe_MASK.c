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
struct spi_device_id {size_t driver_data; int /*<<< orphan*/  name; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct adis16136 {int /*<<< orphan*/  adis; int /*<<< orphan*/ * chip_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  adis16136_channels ; 
 int /*<<< orphan*/ * adis16136_chip_info ; 
 int /*<<< orphan*/  adis16136_data ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  adis16136_info ; 
 int FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct iio_dev*,struct spi_device*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct iio_dev*,int /*<<< orphan*/ *) ; 
 struct iio_dev* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (struct iio_dev*) ; 
 struct adis16136* FUNC9 (struct iio_dev*) ; 
 struct spi_device_id* FUNC10 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC12(struct spi_device *spi)
{
	const struct spi_device_id *id = FUNC10(spi);
	struct adis16136 *adis16136;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC7(&spi->dev, sizeof(*adis16136));
	if (indio_dev == NULL)
		return -ENOMEM;

	FUNC11(spi, indio_dev);

	adis16136 = FUNC9(indio_dev);

	adis16136->chip_info = &adis16136_chip_info[id->driver_data];
	indio_dev->dev.parent = &spi->dev;
	indio_dev->name = FUNC10(spi)->name;
	indio_dev->channels = adis16136_channels;
	indio_dev->num_channels = FUNC0(adis16136_channels);
	indio_dev->info = &adis16136_info;
	indio_dev->modes = INDIO_DIRECT_MODE;

	ret = FUNC5(&adis16136->adis, indio_dev, spi, &adis16136_data);
	if (ret)
		return ret;

	ret = FUNC6(&adis16136->adis, indio_dev, NULL);
	if (ret)
		return ret;

	ret = FUNC2(indio_dev);
	if (ret)
		goto error_cleanup_buffer;

	ret = FUNC8(indio_dev);
	if (ret)
		goto error_stop_device;

	FUNC1(indio_dev);

	return 0;

error_stop_device:
	FUNC3(indio_dev);
error_cleanup_buffer:
	FUNC4(&adis16136->adis, indio_dev);
	return ret;
}