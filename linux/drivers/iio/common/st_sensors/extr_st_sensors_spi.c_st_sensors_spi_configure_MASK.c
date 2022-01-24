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
struct st_sensor_data {int /*<<< orphan*/  irq; int /*<<< orphan*/ * dev; int /*<<< orphan*/  regmap; TYPE_2__* sensor_settings; } ;
struct spi_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  modalias; } ;
struct regmap_config {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct TYPE_4__ {scalar_t__ multi_read_bit; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_device*,struct regmap_config const*) ; 
 struct st_sensor_data* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_device*,struct iio_dev*) ; 
 int FUNC6 (struct spi_device*,TYPE_2__*) ; 
 scalar_t__ FUNC7 (struct spi_device*) ; 
 struct regmap_config st_sensors_spi_regmap_config ; 
 struct regmap_config st_sensors_spi_regmap_multiread_bit_config ; 

int FUNC8(struct iio_dev *indio_dev,
			     struct spi_device *spi)
{
	struct st_sensor_data *sdata = FUNC4(indio_dev);
	const struct regmap_config *config;
	int err;

	if (FUNC7(spi)) {
		err = FUNC6(spi,
						      sdata->sensor_settings);
		if (err < 0)
			return err;
	}

	if (sdata->sensor_settings->multi_read_bit)
		config = &st_sensors_spi_regmap_multiread_bit_config;
	else
		config = &st_sensors_spi_regmap_config;

	sdata->regmap = FUNC3(spi, config);
	if (FUNC0(sdata->regmap)) {
		FUNC2(&spi->dev, "Failed to register spi regmap (%d)\n",
			(int)FUNC1(sdata->regmap));
		return FUNC1(sdata->regmap);
	}

	FUNC5(spi, indio_dev);

	indio_dev->dev.parent = &spi->dev;
	indio_dev->name = spi->modalias;

	sdata->dev = &spi->dev;
	sdata->irq = spi->irq;

	return 0;
}