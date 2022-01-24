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
struct iio_dev {int num_channels; int /*<<< orphan*/ * info; int /*<<< orphan*/ * channels; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct ad7780_state {int gain; int /*<<< orphan*/  reg; TYPE_3__* chip_info; int /*<<< orphan*/  sd; } ;
struct TYPE_6__ {int /*<<< orphan*/  channel; } ;
struct TYPE_5__ {size_t driver_data; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* ad7780_chip_info_tbl ; 
 int /*<<< orphan*/  ad7780_info ; 
 int FUNC2 (int /*<<< orphan*/ *,struct ad7780_state*) ; 
 int /*<<< orphan*/  ad7780_sigma_delta_info ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct iio_dev*,struct spi_device*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int FUNC9 (struct iio_dev*) ; 
 struct ad7780_state* FUNC10 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC13 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC15(struct spi_device *spi)
{
	struct ad7780_state *st;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC7(&spi->dev, sizeof(*st));
	if (!indio_dev)
		return -ENOMEM;

	st = FUNC10(indio_dev);
	st->gain = 1;

	FUNC4(&st->sd, indio_dev, spi, &ad7780_sigma_delta_info);

	st->chip_info =
		&ad7780_chip_info_tbl[FUNC13(spi)->driver_data];

	FUNC14(spi, indio_dev);

	indio_dev->dev.parent = &spi->dev;
	indio_dev->name = FUNC13(spi)->name;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = &st->chip_info->channel;
	indio_dev->num_channels = 1;
	indio_dev->info = &ad7780_info;

	ret = FUNC2(&spi->dev, st);
	if (ret)
		goto error_cleanup_buffer_and_trigger;

	st->reg = FUNC8(&spi->dev, "avdd");
	if (FUNC0(st->reg))
		return FUNC1(st->reg);

	ret = FUNC12(st->reg);
	if (ret) {
		FUNC6(&spi->dev, "Failed to enable specified AVdd supply\n");
		return ret;
	}

	ret = FUNC5(indio_dev);
	if (ret)
		goto error_disable_reg;

	ret = FUNC9(indio_dev);
	if (ret)
		goto error_cleanup_buffer_and_trigger;

	return 0;

error_cleanup_buffer_and_trigger:
	FUNC3(indio_dev);
error_disable_reg:
	FUNC11(st->reg);

	return ret;
}