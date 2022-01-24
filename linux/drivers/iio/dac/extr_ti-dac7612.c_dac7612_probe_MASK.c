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
struct iio_dev {int num_channels; int /*<<< orphan*/  name; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct dac7612 {int /*<<< orphan*/  cache; struct spi_device* spi; int /*<<< orphan*/  loaddacs; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dac7612_channels ; 
 int FUNC3 (struct dac7612*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dac7612_info ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 struct dac7612* FUNC7 (struct iio_dev*) ; 
 TYPE_2__* FUNC8 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC10(struct spi_device *spi)
{
	struct iio_dev *iio_dev;
	struct dac7612 *priv;
	int i;
	int ret;

	iio_dev = FUNC5(&spi->dev, sizeof(*priv));
	if (!iio_dev)
		return -ENOMEM;

	priv = FUNC7(iio_dev);
	/*
	 * LOADDACS pin can be controlled by the driver or externally.
	 * When controlled by the driver, the DAC value is updated after
	 * every write.
	 * When the driver does not control the PIN, the user or an external
	 * event can change the value of all DACs by pulsing down the LOADDACs
	 * pin.
	 */
	priv->loaddacs = FUNC4(&spi->dev, "ti,loaddacs",
						 GPIOD_OUT_LOW);
	if (FUNC1(priv->loaddacs))
		return FUNC2(priv->loaddacs);
	priv->spi = spi;
	FUNC9(spi, iio_dev);
	iio_dev->dev.parent = &spi->dev;
	iio_dev->info = &dac7612_info;
	iio_dev->modes = INDIO_DIRECT_MODE;
	iio_dev->channels = dac7612_channels;
	iio_dev->num_channels = FUNC0(priv->cache);
	iio_dev->name = FUNC8(spi)->name;

	for (i = 0; i < FUNC0(priv->cache); i++) {
		ret = FUNC3(priv, i, 0);
		if (ret)
			return ret;
	}

	return FUNC6(&spi->dev, iio_dev);
}