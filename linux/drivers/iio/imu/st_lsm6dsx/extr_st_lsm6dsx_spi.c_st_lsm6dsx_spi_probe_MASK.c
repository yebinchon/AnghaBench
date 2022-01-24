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
struct spi_device_id {int driver_data; } ;
struct spi_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct regmap {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct regmap* FUNC3 (struct spi_device*,int /*<<< orphan*/ *) ; 
 struct spi_device_id* FUNC4 (struct spi_device*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct regmap*) ; 
 int /*<<< orphan*/  st_lsm6dsx_spi_regmap_config ; 

__attribute__((used)) static int FUNC6(struct spi_device *spi)
{
	const struct spi_device_id *id = FUNC4(spi);
	int hw_id = id->driver_data;
	struct regmap *regmap;

	regmap = FUNC3(spi, &st_lsm6dsx_spi_regmap_config);
	if (FUNC0(regmap)) {
		FUNC2(&spi->dev, "Failed to register spi regmap %d\n",
			(int)FUNC1(regmap));
		return FUNC1(regmap);
	}

	return FUNC5(&spi->dev, spi->irq, hw_id, regmap);
}