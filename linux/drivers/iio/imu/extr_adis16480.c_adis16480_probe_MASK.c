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
struct spi_device_id {size_t driver_data; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct spi_device {TYPE_2__ dev; } ;
struct TYPE_4__ {TYPE_2__* parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct adis16480 {int clk_freq; int /*<<< orphan*/  ext_clk; int /*<<< orphan*/  adis; TYPE_3__* chip_info; } ;
struct TYPE_6__ {int int_clk; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* adis16480_chip_info ; 
 int FUNC1 (int /*<<< orphan*/ ,struct adis16480*) ; 
 int /*<<< orphan*/  adis16480_data ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 int FUNC3 (struct adis16480*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct adis16480*) ; 
 int /*<<< orphan*/  adis16480_info ; 
 int FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct iio_dev*,struct spi_device*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct iio_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC12 (TYPE_2__*,int) ; 
 int FUNC13 (struct iio_dev*) ; 
 struct adis16480* FUNC14 (struct iio_dev*) ; 
 struct spi_device_id* FUNC15 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC17(struct spi_device *spi)
{
	const struct spi_device_id *id = FUNC15(spi);
	struct iio_dev *indio_dev;
	struct adis16480 *st;
	int ret;

	indio_dev = FUNC12(&spi->dev, sizeof(*st));
	if (indio_dev == NULL)
		return -ENOMEM;

	FUNC16(spi, indio_dev);

	st = FUNC14(indio_dev);

	st->chip_info = &adis16480_chip_info[id->driver_data];
	indio_dev->dev.parent = &spi->dev;
	indio_dev->name = FUNC15(spi)->name;
	indio_dev->channels = st->chip_info->channels;
	indio_dev->num_channels = st->chip_info->num_channels;
	indio_dev->info = &adis16480_info;
	indio_dev->modes = INDIO_DIRECT_MODE;

	ret = FUNC8(&st->adis, indio_dev, spi, &adis16480_data);
	if (ret)
		return ret;

	ret = FUNC1(spi->dev.of_node, st);
	if (ret)
		return ret;

	ret = FUNC4(st);
	if (ret)
		return ret;

	if (!FUNC0(st->ext_clk)) {
		ret = FUNC3(st, spi->dev.of_node, true);
		if (ret)
			return ret;

		st->clk_freq = FUNC11(st->ext_clk);
		st->clk_freq *= 1000; /* micro */
	} else {
		st->clk_freq = st->chip_info->int_clk;
	}

	ret = FUNC9(&st->adis, indio_dev, NULL);
	if (ret)
		goto error_clk_disable_unprepare;

	ret = FUNC5(indio_dev);
	if (ret)
		goto error_cleanup_buffer;

	ret = FUNC13(indio_dev);
	if (ret)
		goto error_stop_device;

	FUNC2(indio_dev);

	return 0;

error_stop_device:
	FUNC6(indio_dev);
error_cleanup_buffer:
	FUNC7(&st->adis, indio_dev);
error_clk_disable_unprepare:
	FUNC10(st->ext_clk);
	return ret;
}