#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct spi_device_id {size_t driver_data; int /*<<< orphan*/  name; } ;
struct TYPE_10__ {int /*<<< orphan*/  of_node; } ;
struct spi_device {TYPE_2__ dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  of_node; TYPE_2__* parent; } ;
struct iio_dev {int /*<<< orphan*/ * info; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct ads124s_private {int /*<<< orphan*/  lock; TYPE_8__* chip_info; struct spi_device* spi; int /*<<< orphan*/  reset_gpio; } ;
struct TYPE_11__ {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_8__* ads124s_chip_info_tbl ; 
 int /*<<< orphan*/  ads124s_info ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  ads124s_trigger_handler ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC5 (TYPE_2__*,int) ; 
 int FUNC6 (TYPE_2__*,struct iio_dev*) ; 
 int FUNC7 (TYPE_2__*,struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ads124s_private* FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct spi_device_id* FUNC10 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC12(struct spi_device *spi)
{
	struct ads124s_private *ads124s_priv;
	struct iio_dev *indio_dev;
	const struct spi_device_id *spi_id = FUNC10(spi);
	int ret;

	indio_dev = FUNC5(&spi->dev, sizeof(*ads124s_priv));
	if (indio_dev == NULL)
		return -ENOMEM;

	ads124s_priv = FUNC8(indio_dev);

	ads124s_priv->reset_gpio = FUNC4(&spi->dev,
						   "reset", GPIOD_OUT_LOW);
	if (FUNC0(ads124s_priv->reset_gpio))
		FUNC3(&spi->dev, "Reset GPIO not defined\n");

	ads124s_priv->chip_info = &ads124s_chip_info_tbl[spi_id->driver_data];

	FUNC11(spi, indio_dev);

	ads124s_priv->spi = spi;

	indio_dev->name = spi_id->name;
	indio_dev->dev.parent = &spi->dev;
	indio_dev->dev.of_node = spi->dev.of_node;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = ads124s_priv->chip_info->channels;
	indio_dev->num_channels = ads124s_priv->chip_info->num_channels;
	indio_dev->info = &ads124s_info;

	FUNC9(&ads124s_priv->lock);

	ret = FUNC7(&spi->dev, indio_dev, NULL,
					      ads124s_trigger_handler, NULL);
	if (ret) {
		FUNC2(&spi->dev, "iio triggered buffer setup failed\n");
		return ret;
	}

	FUNC1(indio_dev);

	return FUNC6(&spi->dev, indio_dev);
}