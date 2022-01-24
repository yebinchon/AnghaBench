#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {struct ad9523_platform_data* platform_data; } ;
struct spi_device {TYPE_3__ dev; } ;
struct TYPE_8__ {TYPE_3__* parent; } ;
struct iio_dev {scalar_t__* name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct ad9523_state {void* reg; int /*<<< orphan*/  ad9523_channels; struct ad9523_platform_data* pdata; struct spi_device* spi; void* sync_gpio; void* reset_gpio; void* pwrdown_gpio; int /*<<< orphan*/  lock; } ;
struct ad9523_platform_data {scalar_t__* name; int /*<<< orphan*/  num_channels; } ;
struct TYPE_9__ {scalar_t__* name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  ad9523_info ; 
 int FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,scalar_t__*) ; 
 void* FUNC5 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC6 (TYPE_3__*,int) ; 
 void* FUNC7 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (void*,int) ; 
 int FUNC9 (struct iio_dev*) ; 
 struct ad9523_state* FUNC10 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int FUNC13 (void*) ; 
 TYPE_2__* FUNC14 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct spi_device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 

__attribute__((used)) static int FUNC17(struct spi_device *spi)
{
	struct ad9523_platform_data *pdata = spi->dev.platform_data;
	struct iio_dev *indio_dev;
	struct ad9523_state *st;
	int ret;

	if (!pdata) {
		FUNC3(&spi->dev, "no platform data?\n");
		return -EINVAL;
	}

	indio_dev = FUNC6(&spi->dev, sizeof(*st));
	if (indio_dev == NULL)
		return -ENOMEM;

	st = FUNC10(indio_dev);

	FUNC11(&st->lock);

	st->reg = FUNC7(&spi->dev, "vcc");
	if (!FUNC0(st->reg)) {
		ret = FUNC13(st->reg);
		if (ret)
			return ret;
	}

	st->pwrdown_gpio = FUNC5(&spi->dev, "powerdown",
		GPIOD_OUT_HIGH);
	if (FUNC0(st->pwrdown_gpio)) {
		ret = FUNC1(st->pwrdown_gpio);
		goto error_disable_reg;
	}

	st->reset_gpio = FUNC5(&spi->dev, "reset",
		GPIOD_OUT_LOW);
	if (FUNC0(st->reset_gpio)) {
		ret = FUNC1(st->reset_gpio);
		goto error_disable_reg;
	}

	if (st->reset_gpio) {
		FUNC16(1);
		FUNC8(st->reset_gpio, 1);
	}

	st->sync_gpio = FUNC5(&spi->dev, "sync",
		GPIOD_OUT_HIGH);
	if (FUNC0(st->sync_gpio)) {
		ret = FUNC1(st->sync_gpio);
		goto error_disable_reg;
	}

	FUNC15(spi, indio_dev);
	st->spi = spi;
	st->pdata = pdata;

	indio_dev->dev.parent = &spi->dev;
	indio_dev->name = (pdata->name[0] != 0) ? pdata->name :
			  FUNC14(spi)->name;
	indio_dev->info = &ad9523_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = st->ad9523_channels;
	indio_dev->num_channels = pdata->num_channels;

	ret = FUNC2(indio_dev);
	if (ret < 0)
		goto error_disable_reg;

	ret = FUNC9(indio_dev);
	if (ret)
		goto error_disable_reg;

	FUNC4(&spi->dev, "probed %s\n", indio_dev->name);

	return 0;

error_disable_reg:
	if (!FUNC0(st->reg))
		FUNC12(st->reg);

	return ret;
}