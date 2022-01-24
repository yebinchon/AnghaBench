#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct spi_device {TYPE_2__ dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; TYPE_2__* parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct ads8344 {int /*<<< orphan*/  reg; int /*<<< orphan*/  lock; struct spi_device* spi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ads8344_channels ; 
 int /*<<< orphan*/  ads8344_info ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 struct iio_dev* FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int FUNC6 (struct iio_dev*) ; 
 struct ads8344* FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC12(struct spi_device *spi)
{
	struct iio_dev *indio_dev;
	struct ads8344 *adc;
	int ret;

	indio_dev = FUNC4(&spi->dev, sizeof(*adc));
	if (!indio_dev)
		return -ENOMEM;

	adc = FUNC7(indio_dev);
	adc->spi = spi;
	FUNC8(&adc->lock);

	indio_dev->name = FUNC3(&spi->dev);
	indio_dev->dev.parent = &spi->dev;
	indio_dev->dev.of_node = spi->dev.of_node;
	indio_dev->info = &ads8344_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = ads8344_channels;
	indio_dev->num_channels = FUNC0(ads8344_channels);

	adc->reg = FUNC5(&spi->dev, "vref");
	if (FUNC1(adc->reg))
		return FUNC2(adc->reg);

	ret = FUNC10(adc->reg);
	if (ret)
		return ret;

	FUNC11(spi, indio_dev);

	ret = FUNC6(indio_dev);
	if (ret) {
		FUNC9(adc->reg);
		return ret;
	}

	return 0;
}