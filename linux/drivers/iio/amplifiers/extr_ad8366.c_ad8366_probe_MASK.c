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
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  name; TYPE_1__ dev; void* num_channels; void* channels; } ;
struct ad8366_state {int type; int /*<<< orphan*/  reg; int /*<<< orphan*/ * info; int /*<<< orphan*/  reset_gpio; struct spi_device* spi; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int driver_data; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
#define  ID_AD8366 130 
#define  ID_ADA4961 129 
#define  ID_ADL5240 128 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* ad8366_channels ; 
 int /*<<< orphan*/  ad8366_info ; 
 int /*<<< orphan*/ * ad8366_infos ; 
 int FUNC2 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* ada4961_channels ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (struct iio_dev*) ; 
 struct ad8366_state* FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC12 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC14(struct spi_device *spi)
{
	struct iio_dev *indio_dev;
	struct ad8366_state *st;
	int ret;

	indio_dev = FUNC5(&spi->dev, sizeof(*st));
	if (indio_dev == NULL)
		return -ENOMEM;

	st = FUNC8(indio_dev);

	st->reg = FUNC6(&spi->dev, "vcc");
	if (!FUNC1(st->reg)) {
		ret = FUNC11(st->reg);
		if (ret)
			return ret;
	}

	FUNC13(spi, indio_dev);
	FUNC9(&st->lock);
	st->spi = spi;
	st->type = FUNC12(spi)->driver_data;

	switch (st->type) {
	case ID_AD8366:
		indio_dev->channels = ad8366_channels;
		indio_dev->num_channels = FUNC0(ad8366_channels);
		break;
	case ID_ADA4961:
	case ID_ADL5240:
		st->reset_gpio = FUNC4(&spi->dev, "reset",
			GPIOD_OUT_HIGH);
		indio_dev->channels = ada4961_channels;
		indio_dev->num_channels = FUNC0(ada4961_channels);
		break;
	default:
		FUNC3(&spi->dev, "Invalid device ID\n");
		ret = -EINVAL;
		goto error_disable_reg;
	}

	st->info = &ad8366_infos[st->type];
	indio_dev->dev.parent = &spi->dev;
	indio_dev->name = FUNC12(spi)->name;
	indio_dev->info = &ad8366_info;
	indio_dev->modes = INDIO_DIRECT_MODE;

	ret = FUNC2(indio_dev, 0 , 0);
	if (ret < 0)
		goto error_disable_reg;

	ret = FUNC7(indio_dev);
	if (ret)
		goto error_disable_reg;

	return 0;

error_disable_reg:
	if (!FUNC1(st->reg))
		FUNC10(st->reg);

	return ret;
}