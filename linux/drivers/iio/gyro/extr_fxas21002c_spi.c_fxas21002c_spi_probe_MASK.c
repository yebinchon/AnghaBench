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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct regmap* FUNC3 (struct spi_device*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fxas21002c_regmap_spi_conf ; 
 struct spi_device_id* FUNC5 (struct spi_device*) ; 

__attribute__((used)) static int FUNC6(struct spi_device *spi)
{
	const struct spi_device_id *id = FUNC5(spi);
	struct regmap *regmap;

	regmap = FUNC3(spi, &fxas21002c_regmap_spi_conf);
	if (FUNC0(regmap)) {
		FUNC2(&spi->dev, "Failed to register spi regmap: %ld\n",
			FUNC1(regmap));
		return FUNC1(regmap);
	}

	return FUNC4(&spi->dev, regmap, spi->irq, id->name);
}