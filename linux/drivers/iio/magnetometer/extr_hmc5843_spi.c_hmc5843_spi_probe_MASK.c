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
struct spi_device {int max_speed_hz; int bits_per_word; int /*<<< orphan*/  dev; int /*<<< orphan*/  mode; } ;
struct regmap {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  SPI_MODE_3 ; 
 struct regmap* FUNC2 (struct spi_device*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hmc5843_spi_regmap_config ; 
 struct spi_device_id* FUNC4 (struct spi_device*) ; 
 int FUNC5 (struct spi_device*) ; 

__attribute__((used)) static int FUNC6(struct spi_device *spi)
{
	int ret;
	struct regmap *regmap;
	const struct spi_device_id *id = FUNC4(spi);

	spi->mode = SPI_MODE_3;
	spi->max_speed_hz = 8000000;
	spi->bits_per_word = 8;
	ret = FUNC5(spi);
	if (ret)
		return ret;

	regmap = FUNC2(spi, &hmc5843_spi_regmap_config);
	if (FUNC0(regmap))
		return FUNC1(regmap);

	return FUNC3(&spi->dev,
			regmap,
			id->driver_data, id->name);
}