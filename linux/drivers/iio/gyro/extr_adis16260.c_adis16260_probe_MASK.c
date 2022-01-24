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
struct spi_device_id {size_t driver_data; int /*<<< orphan*/  name; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct adis16260 {int /*<<< orphan*/  adis; TYPE_2__* info; } ;
struct TYPE_4__ {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 TYPE_2__* adis16260_chip_info_table ; 
 int /*<<< orphan*/  adis16260_data ; 
 int /*<<< orphan*/  adis16260_info ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct iio_dev*,struct spi_device*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct iio_dev*,int /*<<< orphan*/ *) ; 
 struct iio_dev* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct iio_dev*) ; 
 struct adis16260* FUNC6 (struct iio_dev*) ; 
 struct spi_device_id* FUNC7 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC9(struct spi_device *spi)
{
	const struct spi_device_id *id;
	struct adis16260 *adis16260;
	struct iio_dev *indio_dev;
	int ret;

	id = FUNC7(spi);
	if (!id)
		return -ENODEV;

	/* setup the industrialio driver allocated elements */
	indio_dev = FUNC4(&spi->dev, sizeof(*adis16260));
	if (!indio_dev)
		return -ENOMEM;
	adis16260 = FUNC6(indio_dev);
	/* this is only used for removal purposes */
	FUNC8(spi, indio_dev);

	adis16260->info = &adis16260_chip_info_table[id->driver_data];

	indio_dev->name = id->name;
	indio_dev->dev.parent = &spi->dev;
	indio_dev->info = &adis16260_info;
	indio_dev->channels = adis16260->info->channels;
	indio_dev->num_channels = adis16260->info->num_channels;
	indio_dev->modes = INDIO_DIRECT_MODE;

	ret = FUNC1(&adis16260->adis, indio_dev, spi, &adis16260_data);
	if (ret)
		return ret;

	ret = FUNC3(&adis16260->adis, indio_dev, NULL);
	if (ret)
		return ret;

	/* Get the device into a sane initial state */
	ret = FUNC2(&adis16260->adis);
	if (ret)
		goto error_cleanup_buffer_trigger;
	ret = FUNC5(indio_dev);
	if (ret)
		goto error_cleanup_buffer_trigger;

	return 0;

error_cleanup_buffer_trigger:
	FUNC0(&adis16260->adis, indio_dev);
	return ret;
}