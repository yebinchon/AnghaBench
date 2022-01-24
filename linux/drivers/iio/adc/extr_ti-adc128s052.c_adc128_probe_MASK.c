#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  of_node; } ;
struct spi_device {TYPE_3__ dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; TYPE_3__* parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct adc128 {int /*<<< orphan*/  lock; int /*<<< orphan*/  reg; struct spi_device* spi; } ;
struct TYPE_11__ {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; } ;
struct TYPE_9__ {unsigned int driver_data; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_7__* adc128_config ; 
 int /*<<< orphan*/  adc128_info ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 struct iio_dev* FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*) ; 
 int FUNC6 (struct iio_dev*) ; 
 struct adc128* FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC12(struct spi_device *spi)
{
	struct iio_dev *indio_dev;
	unsigned int config;
	struct adc128 *adc;
	int ret;

	if (FUNC2(&spi->dev))
		config = (unsigned long) FUNC3(&spi->dev);
	else
		config = FUNC10(spi)->driver_data;

	indio_dev = FUNC4(&spi->dev, sizeof(*adc));
	if (!indio_dev)
		return -ENOMEM;

	adc = FUNC7(indio_dev);
	adc->spi = spi;

	FUNC11(spi, indio_dev);

	indio_dev->dev.parent = &spi->dev;
	indio_dev->dev.of_node = spi->dev.of_node;
	indio_dev->name = FUNC10(spi)->name;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &adc128_info;

	indio_dev->channels = adc128_config[config].channels;
	indio_dev->num_channels = adc128_config[config].num_channels;

	adc->reg = FUNC5(&spi->dev, "vref");
	if (FUNC0(adc->reg))
		return FUNC1(adc->reg);

	ret = FUNC9(adc->reg);
	if (ret < 0)
		return ret;

	FUNC8(&adc->lock);

	ret = FUNC6(indio_dev);

	return ret;
}