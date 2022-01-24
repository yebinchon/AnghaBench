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
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct ad5624r_state {int vref_mv; int /*<<< orphan*/  reg; TYPE_3__* chip_info; struct spi_device* us; } ;
struct TYPE_6__ {int int_vref_mv; int /*<<< orphan*/  channels; } ;
struct TYPE_5__ {size_t driver_data; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD5624R_CMD_INTERNAL_REFER_SETUP ; 
 int /*<<< orphan*/  AD5624R_DAC_CHANNELS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* ad5624r_chip_info_tbl ; 
 int /*<<< orphan*/  ad5624r_info ; 
 int FUNC1 (struct spi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct iio_dev* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (struct iio_dev*) ; 
 struct ad5624r_state* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC11(struct spi_device *spi)
{
	struct ad5624r_state *st;
	struct iio_dev *indio_dev;
	int ret, voltage_uv = 0;

	indio_dev = FUNC2(&spi->dev, sizeof(*st));
	if (!indio_dev)
		return -ENOMEM;
	st = FUNC5(indio_dev);
	st->reg = FUNC3(&spi->dev, "vcc");
	if (!FUNC0(st->reg)) {
		ret = FUNC7(st->reg);
		if (ret)
			return ret;

		ret = FUNC8(st->reg);
		if (ret < 0)
			goto error_disable_reg;

		voltage_uv = ret;
	}

	FUNC10(spi, indio_dev);
	st->chip_info =
		&ad5624r_chip_info_tbl[FUNC9(spi)->driver_data];

	if (voltage_uv)
		st->vref_mv = voltage_uv / 1000;
	else
		st->vref_mv = st->chip_info->int_vref_mv;

	st->us = spi;

	indio_dev->dev.parent = &spi->dev;
	indio_dev->name = FUNC9(spi)->name;
	indio_dev->info = &ad5624r_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = st->chip_info->channels;
	indio_dev->num_channels = AD5624R_DAC_CHANNELS;

	ret = FUNC1(spi, AD5624R_CMD_INTERNAL_REFER_SETUP, 0,
				!!voltage_uv, 16);
	if (ret)
		goto error_disable_reg;

	ret = FUNC4(indio_dev);
	if (ret)
		goto error_disable_reg;

	return 0;

error_disable_reg:
	if (!FUNC0(st->reg))
		FUNC6(st->reg);

	return ret;
}