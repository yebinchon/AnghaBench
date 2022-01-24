#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct spi_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct adis16460 {int /*<<< orphan*/  adis; TYPE_3__* chip_info; } ;
struct TYPE_6__ {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 TYPE_3__ adis16460_chip_info ; 
 int /*<<< orphan*/  adis16460_data ; 
 int /*<<< orphan*/  FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adis16460_info ; 
 int FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct iio_dev*,struct spi_device*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct iio_dev*,int /*<<< orphan*/ *) ; 
 struct iio_dev* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (struct iio_dev*) ; 
 struct adis16460* FUNC8 (struct iio_dev*) ; 
 TYPE_2__* FUNC9 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC11(struct spi_device *spi)
{
	struct iio_dev *indio_dev;
	struct adis16460 *st;
	int ret;

	indio_dev = FUNC6(&spi->dev, sizeof(*st));
	if (indio_dev == NULL)
		return -ENOMEM;

	FUNC10(spi, indio_dev);

	st = FUNC8(indio_dev);

	st->chip_info = &adis16460_chip_info;
	indio_dev->dev.parent = &spi->dev;
	indio_dev->name = FUNC9(spi)->name;
	indio_dev->channels = st->chip_info->channels;
	indio_dev->num_channels = st->chip_info->num_channels;
	indio_dev->info = &adis16460_info;
	indio_dev->modes = INDIO_DIRECT_MODE;

	ret = FUNC4(&st->adis, indio_dev, spi, &adis16460_data);
	if (ret)
		return ret;

	ret = FUNC5(&st->adis, indio_dev, NULL);
	if (ret)
		return ret;

	FUNC1(&st->adis, 0);

	ret = FUNC2(indio_dev);
	if (ret)
		goto error_cleanup_buffer;

	ret = FUNC7(indio_dev);
	if (ret)
		goto error_cleanup_buffer;

	FUNC0(indio_dev);

	return 0;

error_cleanup_buffer:
	FUNC3(&st->adis, indio_dev);
	return ret;
}