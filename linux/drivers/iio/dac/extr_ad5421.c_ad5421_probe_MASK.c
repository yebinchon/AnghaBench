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
struct spi_device {int /*<<< orphan*/  dev; scalar_t__ irq; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {char* name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct ad5421_state {int ctrl; int /*<<< orphan*/  current_range; struct spi_device* spi; } ;
struct ad5421_platform_data {scalar_t__ external_vref; int /*<<< orphan*/  current_range; } ;

/* Variables and functions */
 int AD5421_CTRL_AUTO_FAULT_READBACK ; 
 int AD5421_CTRL_PWR_DOWN_INT_VREF ; 
 int AD5421_CTRL_WATCHDOG_DISABLE ; 
 int /*<<< orphan*/  AD5421_CURRENT_RANGE_4mA_20mA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_HIGH ; 
 int /*<<< orphan*/  ad5421_channels ; 
 int /*<<< orphan*/  ad5421_fault_handler ; 
 int /*<<< orphan*/  ad5421_info ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct ad5421_platform_data* FUNC3 (int /*<<< orphan*/ *) ; 
 struct iio_dev* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct iio_dev*) ; 
 struct ad5421_state* FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC9(struct spi_device *spi)
{
	struct ad5421_platform_data *pdata = FUNC3(&spi->dev);
	struct iio_dev *indio_dev;
	struct ad5421_state *st;
	int ret;

	indio_dev = FUNC4(&spi->dev, sizeof(*st));
	if (indio_dev == NULL) {
		FUNC2(&spi->dev, "Failed to allocate iio device\n");
		return  -ENOMEM;
	}

	st = FUNC7(indio_dev);
	FUNC8(spi, indio_dev);

	st->spi = spi;

	indio_dev->dev.parent = &spi->dev;
	indio_dev->name = "ad5421";
	indio_dev->info = &ad5421_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = ad5421_channels;
	indio_dev->num_channels = FUNC0(ad5421_channels);

	st->ctrl = AD5421_CTRL_WATCHDOG_DISABLE |
			AD5421_CTRL_AUTO_FAULT_READBACK;

	if (pdata) {
		st->current_range = pdata->current_range;
		if (pdata->external_vref)
			st->ctrl |= AD5421_CTRL_PWR_DOWN_INT_VREF;
	} else {
		st->current_range = AD5421_CURRENT_RANGE_4mA_20mA;
	}

	/* write initial ctrl register value */
	FUNC1(indio_dev, 0, 0);

	if (spi->irq) {
		ret = FUNC6(&spi->dev, spi->irq,
					   NULL,
					   ad5421_fault_handler,
					   IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
					   "ad5421 fault",
					   indio_dev);
		if (ret)
			return ret;
	}

	return FUNC5(&spi->dev, indio_dev);
}