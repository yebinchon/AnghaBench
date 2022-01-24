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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int num_channels; int /*<<< orphan*/  name; int /*<<< orphan*/ * channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct ad5761_state {int /*<<< orphan*/  vref_reg; struct spi_device* spi; } ;
struct ad5761_platform_data {int voltage_range; } ;
struct ad5761_chip_info {int /*<<< orphan*/  channel; } ;
typedef  enum ad5761_voltage_range { ____Placeholder_ad5761_voltage_range } ad5761_voltage_range ;
struct TYPE_4__ {size_t driver_data; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int AD5761_VOLTAGE_RANGE_0V_5V ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ad5761_chip_info* ad5761_chip_infos ; 
 int FUNC1 (struct ad5761_state*,struct ad5761_chip_info const*) ; 
 int /*<<< orphan*/  ad5761_info ; 
 int FUNC2 (struct ad5761_state*,int) ; 
 struct ad5761_platform_data* FUNC3 (int /*<<< orphan*/ *) ; 
 struct iio_dev* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct iio_dev*) ; 
 struct ad5761_state* FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC10(struct spi_device *spi)
{
	struct iio_dev *iio_dev;
	struct ad5761_state *st;
	int ret;
	const struct ad5761_chip_info *chip_info =
		&ad5761_chip_infos[FUNC8(spi)->driver_data];
	enum ad5761_voltage_range voltage_range = AD5761_VOLTAGE_RANGE_0V_5V;
	struct ad5761_platform_data *pdata = FUNC3(&spi->dev);

	iio_dev = FUNC4(&spi->dev, sizeof(*st));
	if (!iio_dev)
		return -ENOMEM;

	st = FUNC6(iio_dev);

	st->spi = spi;
	FUNC9(spi, iio_dev);

	ret = FUNC1(st, chip_info);
	if (ret)
		return ret;

	if (pdata)
		voltage_range = pdata->voltage_range;

	ret = FUNC2(st, voltage_range);
	if (ret)
		goto disable_regulator_err;

	iio_dev->dev.parent = &spi->dev;
	iio_dev->info = &ad5761_info;
	iio_dev->modes = INDIO_DIRECT_MODE;
	iio_dev->channels = &chip_info->channel;
	iio_dev->num_channels = 1;
	iio_dev->name = FUNC8(st->spi)->name;
	ret = FUNC5(iio_dev);
	if (ret)
		goto disable_regulator_err;

	return 0;

disable_regulator_err:
	if (!FUNC0(st->vref_reg))
		FUNC7(st->vref_reg);

	return ret;
}