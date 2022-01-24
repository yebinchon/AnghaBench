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
struct spi_device {scalar_t__ irq; int /*<<< orphan*/  dev; } ;
struct sca3000_state {TYPE_3__* info; int /*<<< orphan*/  lock; struct spi_device* us; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/ * setup_ops; int /*<<< orphan*/  modes; void* num_channels; void* channels; int /*<<< orphan*/ * info; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct TYPE_6__ {scalar_t__ temp_output; } ;
struct TYPE_5__ {size_t driver_data; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 struct iio_dev* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct iio_dev*) ; 
 int FUNC3 (struct iio_dev*) ; 
 struct sca3000_state* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*,struct iio_dev*) ; 
 void* sca3000_channels ; 
 void* sca3000_channels_with_temp ; 
 int FUNC7 (struct sca3000_state*) ; 
 int FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  sca3000_event_handler ; 
 int /*<<< orphan*/  sca3000_info ; 
 int FUNC9 (struct iio_dev*) ; 
 int /*<<< orphan*/  sca3000_ring_setup_ops ; 
 TYPE_3__* sca3000_spi_chip_info_tbl ; 
 TYPE_2__* FUNC10 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC12(struct spi_device *spi)
{
	int ret;
	struct sca3000_state *st;
	struct iio_dev *indio_dev;

	indio_dev = FUNC1(&spi->dev, sizeof(*st));
	if (!indio_dev)
		return -ENOMEM;

	st = FUNC4(indio_dev);
	FUNC11(spi, indio_dev);
	st->us = spi;
	FUNC5(&st->lock);
	st->info = &sca3000_spi_chip_info_tbl[FUNC10(spi)
					      ->driver_data];

	indio_dev->dev.parent = &spi->dev;
	indio_dev->name = FUNC10(spi)->name;
	indio_dev->info = &sca3000_info;
	if (st->info->temp_output) {
		indio_dev->channels = sca3000_channels_with_temp;
		indio_dev->num_channels =
			FUNC0(sca3000_channels_with_temp);
	} else {
		indio_dev->channels = sca3000_channels;
		indio_dev->num_channels = FUNC0(sca3000_channels);
	}
	indio_dev->modes = INDIO_DIRECT_MODE;

	ret = FUNC8(indio_dev);
	if (ret)
		return ret;

	if (spi->irq) {
		ret = FUNC6(spi->irq,
					   NULL,
					   &sca3000_event_handler,
					   IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
					   "sca3000",
					   indio_dev);
		if (ret)
			return ret;
	}
	indio_dev->setup_ops = &sca3000_ring_setup_ops;
	ret = FUNC7(st);
	if (ret)
		goto error_free_irq;

	ret = FUNC9(indio_dev);
	if (ret)
		goto error_free_irq;

	return FUNC3(indio_dev);

error_free_irq:
	if (spi->irq)
		FUNC2(spi->irq, indio_dev);

	return ret;
}