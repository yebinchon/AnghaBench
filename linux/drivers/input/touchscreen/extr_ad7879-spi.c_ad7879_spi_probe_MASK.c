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
struct spi_device {scalar_t__ max_speed_hz; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct regmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD7879_DEVID ; 
 int /*<<< orphan*/  BUS_SPI ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 scalar_t__ MAX_SPI_FREQ_HZ ; 
 int FUNC1 (struct regmap*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ad7879_spi_regmap_config ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 struct regmap* FUNC4 (struct spi_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi)
{
	struct regmap *regmap;

	/* don't exceed max specified SPI CLK frequency */
	if (spi->max_speed_hz > MAX_SPI_FREQ_HZ) {
		FUNC3(&spi->dev, "SPI CLK %d Hz?\n", spi->max_speed_hz);
		return -EINVAL;
	}

	regmap = FUNC4(spi, &ad7879_spi_regmap_config);
	if (FUNC0(regmap))
		return FUNC1(regmap);

	return FUNC2(&spi->dev, regmap, spi->irq, BUS_SPI, AD7879_DEVID);
}