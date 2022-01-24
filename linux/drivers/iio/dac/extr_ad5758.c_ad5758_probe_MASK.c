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
struct iio_dev {int num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct ad5758_state {scalar_t__ dc_dc_mode; struct spi_device* spi; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ AD5758_DCDC_MODE_DPC_VOLTAGE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  ad5758_current_ch ; 
 int /*<<< orphan*/  ad5758_info ; 
 int FUNC0 (struct ad5758_state*) ; 
 int FUNC1 (struct ad5758_state*) ; 
 int /*<<< orphan*/  ad5758_voltage_ch ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 struct ad5758_state* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC9(struct spi_device *spi)
{
	struct ad5758_state *st;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC3(&spi->dev, sizeof(*st));
	if (!indio_dev)
		return -ENOMEM;

	st = FUNC5(indio_dev);
	FUNC8(spi, indio_dev);

	st->spi = spi;

	FUNC6(&st->lock);

	indio_dev->dev.parent = &spi->dev;
	indio_dev->name = FUNC7(spi)->name;
	indio_dev->info = &ad5758_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->num_channels = 1;

	ret = FUNC1(st);
	if (ret < 0)
		return ret;

	if (st->dc_dc_mode == AD5758_DCDC_MODE_DPC_VOLTAGE)
		indio_dev->channels = ad5758_voltage_ch;
	else
		indio_dev->channels = ad5758_current_ch;

	ret = FUNC0(st);
	if (ret < 0) {
		FUNC2(&spi->dev, "AD5758 init failed\n");
		return ret;
	}

	return FUNC4(&st->spi->dev, indio_dev);
}