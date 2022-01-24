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
struct spi_device_id {int driver_data; int /*<<< orphan*/  name; } ;
struct spi_device {int bits_per_word; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct regmap_config {int dummy; } ;
struct regmap {int dummy; } ;

/* Variables and functions */
#define  BME280_CHIP_ID 130 
#define  BMP180_CHIP_ID 129 
#define  BMP280_CHIP_ID 128 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 struct regmap_config bmp180_regmap_config ; 
 int FUNC2 (int /*<<< orphan*/ *,struct regmap*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bmp280_regmap_bus ; 
 struct regmap_config bmp280_regmap_config ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct regmap* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct regmap_config const*) ; 
 struct spi_device_id* FUNC5 (struct spi_device*) ; 
 int FUNC6 (struct spi_device*) ; 

__attribute__((used)) static int FUNC7(struct spi_device *spi)
{
	const struct spi_device_id *id = FUNC5(spi);
	struct regmap *regmap;
	const struct regmap_config *regmap_config;
	int ret;

	spi->bits_per_word = 8;
	ret = FUNC6(spi);
	if (ret < 0) {
		FUNC3(&spi->dev, "spi_setup failed!\n");
		return ret;
	}

	switch (id->driver_data) {
	case BMP180_CHIP_ID:
		regmap_config = &bmp180_regmap_config;
		break;
	case BMP280_CHIP_ID:
	case BME280_CHIP_ID:
		regmap_config = &bmp280_regmap_config;
		break;
	default:
		return -EINVAL;
	}

	regmap = FUNC4(&spi->dev,
				  &bmp280_regmap_bus,
				  &spi->dev,
				  regmap_config);
	if (FUNC0(regmap)) {
		FUNC3(&spi->dev, "failed to allocate register map\n");
		return FUNC1(regmap);
	}

	return FUNC2(&spi->dev,
				   regmap,
				   id->driver_data,
				   id->name,
				   spi->irq);
}