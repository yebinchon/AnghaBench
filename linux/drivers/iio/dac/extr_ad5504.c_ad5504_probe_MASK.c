#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {struct ad5504_platform_data* platform_data; } ;
struct spi_device {scalar_t__ irq; TYPE_3__ dev; } ;
struct regulator {int dummy; } ;
struct TYPE_7__ {TYPE_3__* parent; } ;
struct iio_dev {int num_channels; int /*<<< orphan*/  modes; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct ad5504_state {int vref_mv; struct spi_device* spi; struct regulator* reg; } ;
struct ad5504_platform_data {int vref_mv; } ;
struct TYPE_8__ {scalar_t__ driver_data; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ ID_AD5501 ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int /*<<< orphan*/  FUNC0 (struct regulator*) ; 
 int /*<<< orphan*/  ad5504_channels ; 
 int /*<<< orphan*/  ad5504_event_handler ; 
 int /*<<< orphan*/  ad5504_info ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*) ; 
 struct iio_dev* FUNC2 (TYPE_3__*,int) ; 
 struct regulator* FUNC3 (TYPE_3__*,char*) ; 
 int FUNC4 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct iio_dev*) ; 
 int FUNC5 (struct iio_dev*) ; 
 struct ad5504_state* FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct regulator*) ; 
 int FUNC8 (struct regulator*) ; 
 int FUNC9 (struct regulator*) ; 
 TYPE_2__* FUNC10 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC12(struct spi_device *spi)
{
	struct ad5504_platform_data *pdata = spi->dev.platform_data;
	struct iio_dev *indio_dev;
	struct ad5504_state *st;
	struct regulator *reg;
	int ret, voltage_uv = 0;

	indio_dev = FUNC2(&spi->dev, sizeof(*st));
	if (!indio_dev)
		return -ENOMEM;
	reg = FUNC3(&spi->dev, "vcc");
	if (!FUNC0(reg)) {
		ret = FUNC8(reg);
		if (ret)
			return ret;

		ret = FUNC9(reg);
		if (ret < 0)
			goto error_disable_reg;

		voltage_uv = ret;
	}

	FUNC11(spi, indio_dev);
	st = FUNC6(indio_dev);
	if (voltage_uv)
		st->vref_mv = voltage_uv / 1000;
	else if (pdata)
		st->vref_mv = pdata->vref_mv;
	else
		FUNC1(&spi->dev, "reference voltage unspecified\n");

	st->reg = reg;
	st->spi = spi;
	indio_dev->dev.parent = &spi->dev;
	indio_dev->name = FUNC10(st->spi)->name;
	indio_dev->info = &ad5504_info;
	if (FUNC10(st->spi)->driver_data == ID_AD5501)
		indio_dev->num_channels = 1;
	else
		indio_dev->num_channels = 4;
	indio_dev->channels = ad5504_channels;
	indio_dev->modes = INDIO_DIRECT_MODE;

	if (spi->irq) {
		ret = FUNC4(&spi->dev, spi->irq,
					   NULL,
					   &ad5504_event_handler,
					   IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
					   FUNC10(st->spi)->name,
					   indio_dev);
		if (ret)
			goto error_disable_reg;
	}

	ret = FUNC5(indio_dev);
	if (ret)
		goto error_disable_reg;

	return 0;

error_disable_reg:
	if (!FUNC0(reg))
		FUNC7(reg);

	return ret;
}