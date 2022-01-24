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
struct ltc2632_state {int vref_mv; int /*<<< orphan*/ * vref_reg; struct spi_device* spi_dev; } ;
struct ltc2632_chip_info {int vref_mv; int /*<<< orphan*/  channels; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; scalar_t__ driver_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LTC2632_CMD_EXTERNAL_REFER ; 
 int /*<<< orphan*/  LTC2632_CMD_INTERNAL_REFER ; 
 int /*<<< orphan*/  LTC2632_DAC_CHANNELS ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *) ; 
 struct iio_dev* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (struct iio_dev*) ; 
 struct ltc2632_state* FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  ltc2632_info ; 
 int FUNC8 (struct spi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC11 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC13(struct spi_device *spi)
{
	struct ltc2632_state *st;
	struct iio_dev *indio_dev;
	struct ltc2632_chip_info *chip_info;
	int ret;

	indio_dev = FUNC4(&spi->dev, sizeof(*st));
	if (!indio_dev)
		return -ENOMEM;

	st = FUNC7(indio_dev);

	FUNC12(spi, indio_dev);
	st->spi_dev = spi;

	chip_info = (struct ltc2632_chip_info *)
			FUNC11(spi)->driver_data;

	st->vref_reg = FUNC5(&spi->dev, "vref");
	if (FUNC1(st->vref_reg) == -ENODEV) {
		/* use internal reference voltage */
		st->vref_reg = NULL;
		st->vref_mv = chip_info->vref_mv;

		ret = FUNC8(spi, LTC2632_CMD_INTERNAL_REFER,
				0, 0, 0);
		if (ret) {
			FUNC2(&spi->dev,
				"Set internal reference command failed, %d\n",
				ret);
			return ret;
		}
	} else if (FUNC0(st->vref_reg)) {
		FUNC2(&spi->dev,
				"Error getting voltage reference regulator\n");
		return FUNC1(st->vref_reg);
	} else {
		/* use external reference voltage */
		ret = FUNC9(st->vref_reg);
		if (ret) {
			FUNC2(&spi->dev,
				"enable reference regulator failed, %d\n",
				ret);
			return ret;
		}
		st->vref_mv = FUNC10(st->vref_reg) / 1000;

		ret = FUNC8(spi, LTC2632_CMD_EXTERNAL_REFER,
				0, 0, 0);
		if (ret) {
			FUNC2(&spi->dev,
				"Set external reference command failed, %d\n",
				ret);
			return ret;
		}
	}

	indio_dev->dev.parent = &spi->dev;
	indio_dev->name = FUNC3(&spi->dev) ? FUNC3(&spi->dev)->name
						 : FUNC11(spi)->name;
	indio_dev->info = &ltc2632_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = chip_info->channels;
	indio_dev->num_channels = LTC2632_DAC_CHANNELS;

	return FUNC6(indio_dev);
}