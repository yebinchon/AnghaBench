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
struct spi_device {int bits_per_word; int /*<<< orphan*/  dev; } ;
struct regmap {int dummy; } ;
struct bme680_spi_bus_context {int current_page; struct spi_device* spi; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct regmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bme680_regmap_bus ; 
 int /*<<< orphan*/  bme680_regmap_config ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 struct bme680_spi_bus_context* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct bme680_spi_bus_context*,int /*<<< orphan*/ *) ; 
 struct spi_device_id* FUNC6 (struct spi_device*) ; 
 int FUNC7 (struct spi_device*) ; 

__attribute__((used)) static int FUNC8(struct spi_device *spi)
{
	const struct spi_device_id *id = FUNC6(spi);
	struct bme680_spi_bus_context *bus_context;
	struct regmap *regmap;
	int ret;

	spi->bits_per_word = 8;
	ret = FUNC7(spi);
	if (ret < 0) {
		FUNC3(&spi->dev, "spi_setup failed!\n");
		return ret;
	}

	bus_context = FUNC4(&spi->dev, sizeof(*bus_context), GFP_KERNEL);
	if (!bus_context)
		return -ENOMEM;

	bus_context->spi = spi;
	bus_context->current_page = 0xff; /* Undefined on warm boot */

	regmap = FUNC5(&spi->dev, &bme680_regmap_bus,
				  bus_context, &bme680_regmap_config);
	if (FUNC0(regmap)) {
		FUNC3(&spi->dev, "Failed to register spi regmap %d\n",
				(int)FUNC1(regmap));
		return FUNC1(regmap);
	}

	return FUNC2(&spi->dev, regmap, id->name);
}