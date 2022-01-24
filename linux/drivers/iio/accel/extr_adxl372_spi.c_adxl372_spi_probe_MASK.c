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
struct spi_device_id {int /*<<< orphan*/  name; } ;
struct spi_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct regmap {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adxl372_spi_regmap_config ; 
 struct regmap* FUNC3 (struct spi_device*,int /*<<< orphan*/ *) ; 
 struct spi_device_id* FUNC4 (struct spi_device*) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi)
{
	const struct spi_device_id *id = FUNC4(spi);
	struct regmap *regmap;

	regmap = FUNC3(spi, &adxl372_spi_regmap_config);
	if (FUNC0(regmap))
		return FUNC1(regmap);

	return FUNC2(&spi->dev, regmap, spi->irq, id->name);
}