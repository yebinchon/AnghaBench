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
struct spi_device_id {size_t driver_data; int /*<<< orphan*/  name; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct regmap {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct adf4371_state {struct regmap* clkin; int /*<<< orphan*/  clkin_freq; TYPE_2__* chip_info; int /*<<< orphan*/  lock; struct regmap* regmap; struct spi_device* spi; } ;
struct TYPE_4__ {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 TYPE_2__* adf4371_chip_info ; 
 int /*<<< orphan*/  adf4371_clk_disable ; 
 int /*<<< orphan*/  adf4371_info ; 
 int /*<<< orphan*/  adf4371_regmap_config ; 
 int FUNC2 (struct adf4371_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*) ; 
 int FUNC4 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct adf4371_state*) ; 
 struct regmap* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 struct regmap* FUNC10 (struct spi_device*,int /*<<< orphan*/ *) ; 
 struct adf4371_state* FUNC11 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct spi_device_id* FUNC13 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC15(struct spi_device *spi)
{
	const struct spi_device_id *id = FUNC13(spi);
	struct iio_dev *indio_dev;
	struct adf4371_state *st;
	struct regmap *regmap;
	int ret;

	indio_dev = FUNC8(&spi->dev, sizeof(*st));
	if (!indio_dev)
		return -ENOMEM;

	regmap = FUNC10(spi, &adf4371_regmap_config);
	if (FUNC0(regmap)) {
		FUNC5(&spi->dev, "Error initializing spi regmap: %ld\n",
			FUNC1(regmap));
		return FUNC1(regmap);
	}

	st = FUNC11(indio_dev);
	FUNC14(spi, indio_dev);
	st->spi = spi;
	st->regmap = regmap;
	FUNC12(&st->lock);

	st->chip_info = &adf4371_chip_info[id->driver_data];
	indio_dev->dev.parent = &spi->dev;
	indio_dev->name = id->name;
	indio_dev->info = &adf4371_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = st->chip_info->channels;
	indio_dev->num_channels = st->chip_info->num_channels;

	st->clkin = FUNC7(&spi->dev, "clkin");
	if (FUNC0(st->clkin))
		return FUNC1(st->clkin);

	ret = FUNC4(st->clkin);
	if (ret < 0)
		return ret;

	ret = FUNC6(&spi->dev, adf4371_clk_disable, st);
	if (ret)
		return ret;

	st->clkin_freq = FUNC3(st->clkin);

	ret = FUNC2(st);
	if (ret < 0) {
		FUNC5(&spi->dev, "ADF4371 setup failed\n");
		return ret;
	}

	return FUNC9(&spi->dev, indio_dev);
}