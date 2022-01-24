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
struct spi_device_id {size_t driver_data; int /*<<< orphan*/  name; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct ltc1660_priv {int /*<<< orphan*/  vref_reg; struct spi_device* spi; int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LTC1660_NUM_CHANNELS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 struct iio_dev* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (struct iio_dev*) ; 
 struct ltc1660_priv* FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/ * ltc1660_channels ; 
 int /*<<< orphan*/  ltc1660_info ; 
 int /*<<< orphan*/  ltc1660_regmap_config ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 struct spi_device_id* FUNC10 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC12(struct spi_device *spi)
{
	struct iio_dev *indio_dev;
	struct ltc1660_priv *priv;
	const struct spi_device_id *id = FUNC10(spi);
	int ret;

	indio_dev = FUNC3(&spi->dev, sizeof(*priv));
	if (indio_dev == NULL)
		return -ENOMEM;

	priv = FUNC7(indio_dev);
	priv->regmap = FUNC4(spi, &ltc1660_regmap_config);
	if (FUNC0(priv->regmap)) {
		FUNC2(&spi->dev, "failed to register spi regmap %ld\n",
			FUNC1(priv->regmap));
		return FUNC1(priv->regmap);
	}

	priv->vref_reg = FUNC5(&spi->dev, "vref");
	if (FUNC0(priv->vref_reg)) {
		FUNC2(&spi->dev, "vref regulator not specified\n");
		return FUNC1(priv->vref_reg);
	}

	ret = FUNC9(priv->vref_reg);
	if (ret) {
		FUNC2(&spi->dev, "failed to enable vref regulator: %d\n",
				ret);
		return ret;
	}

	priv->spi = spi;
	FUNC11(spi, indio_dev);
	indio_dev->dev.parent = &spi->dev;
	indio_dev->info = &ltc1660_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = ltc1660_channels[id->driver_data];
	indio_dev->num_channels = LTC1660_NUM_CHANNELS;
	indio_dev->name = id->name;

	ret = FUNC6(indio_dev);
	if (ret) {
		FUNC2(&spi->dev, "failed to register iio device: %d\n",
				ret);
		goto error_disable_reg;
	}

	return 0;

error_disable_reg:
	FUNC8(priv->vref_reg);

	return ret;
}