#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct spi_device_id {int /*<<< orphan*/  name; int /*<<< orphan*/  driver_data; } ;
struct spi_device {scalar_t__ max_speed_hz; int /*<<< orphan*/  dev; } ;
struct regmap {int dummy; } ;

/* Variables and functions */
 scalar_t__ ADXL345_MAX_SPI_FREQ_HZ ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adxl345_spi_regmap_config ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 struct regmap* FUNC4 (struct spi_device*,int /*<<< orphan*/ *) ; 
 struct spi_device_id* FUNC5 (struct spi_device*) ; 

__attribute__((used)) static int FUNC6(struct spi_device *spi)
{
	const struct spi_device_id *id = FUNC5(spi);
	struct regmap *regmap;

	/* Bail out if max_speed_hz exceeds 5 MHz */
	if (spi->max_speed_hz > ADXL345_MAX_SPI_FREQ_HZ) {
		FUNC3(&spi->dev, "SPI CLK, %d Hz exceeds 5 MHz\n",
			spi->max_speed_hz);
		return -EINVAL;
	}

	regmap = FUNC4(spi, &adxl345_spi_regmap_config);
	if (FUNC0(regmap)) {
		FUNC3(&spi->dev, "Error initializing spi regmap: %ld\n",
			FUNC1(regmap));
		return FUNC1(regmap);
	}

	return FUNC2(&spi->dev, regmap, id->driver_data, id->name);
}