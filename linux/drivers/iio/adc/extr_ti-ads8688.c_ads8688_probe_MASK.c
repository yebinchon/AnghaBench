#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  of_node; } ;
struct spi_device {TYPE_3__ dev; int /*<<< orphan*/  mode; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; TYPE_3__* parent; } ;
struct iio_dev {int /*<<< orphan*/ * info; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct ads8688_state {int vref_mv; int /*<<< orphan*/  reg; int /*<<< orphan*/  lock; TYPE_6__* chip_info; struct spi_device* spi; } ;
struct TYPE_10__ {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; } ;
struct TYPE_8__ {size_t driver_data; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ADS8688_VREF_MV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_MODE_1 ; 
 TYPE_6__* ads8688_chip_info_tbl ; 
 int /*<<< orphan*/  ads8688_info ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  ads8688_trigger_handler ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 struct iio_dev* FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 int FUNC5 (struct iio_dev*) ; 
 struct ads8688_state* FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct iio_dev*) ; 
 int FUNC8 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC13 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC15(struct spi_device *spi)
{
	struct ads8688_state *st;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC3(&spi->dev, sizeof(*st));
	if (indio_dev == NULL)
		return -ENOMEM;

	st = FUNC6(indio_dev);

	st->reg = FUNC4(&spi->dev, "vref");
	if (!FUNC0(st->reg)) {
		ret = FUNC11(st->reg);
		if (ret)
			return ret;

		ret = FUNC12(st->reg);
		if (ret < 0)
			goto err_regulator_disable;

		st->vref_mv = ret / 1000;
	} else {
		/* Use internal reference */
		st->vref_mv = ADS8688_VREF_MV;
	}

	st->chip_info =	&ads8688_chip_info_tbl[FUNC13(spi)->driver_data];

	spi->mode = SPI_MODE_1;

	FUNC14(spi, indio_dev);

	st->spi = spi;

	indio_dev->name = FUNC13(spi)->name;
	indio_dev->dev.parent = &spi->dev;
	indio_dev->dev.of_node = spi->dev.of_node;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = st->chip_info->channels;
	indio_dev->num_channels = st->chip_info->num_channels;
	indio_dev->info = &ads8688_info;

	FUNC1(indio_dev);

	FUNC9(&st->lock);

	ret = FUNC8(indio_dev, NULL, ads8688_trigger_handler, NULL);
	if (ret < 0) {
		FUNC2(&spi->dev, "iio triggered buffer setup failed\n");
		goto err_regulator_disable;
	}

	ret = FUNC5(indio_dev);
	if (ret)
		goto err_buffer_cleanup;

	return 0;

err_buffer_cleanup:
	FUNC7(indio_dev);

err_regulator_disable:
	if (!FUNC0(st->reg))
		FUNC10(st->reg);

	return ret;
}