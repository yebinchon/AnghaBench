#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct spi_device {int bits_per_word; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  max_speed_hz; int /*<<< orphan*/  mode; } ;
struct regmap {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  SPI_MODE_3 ; 
 int /*<<< orphan*/  ZPA2326_DEVICE_ID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct regmap* FUNC3 (struct spi_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_1__* FUNC5 (struct spi_device*) ; 
 int FUNC6 (struct spi_device*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct regmap*) ; 
 int /*<<< orphan*/  zpa2326_regmap_spi_config ; 

__attribute__((used)) static int FUNC8(struct spi_device *spi)
{
	struct regmap *regmap;
	int            err;

	regmap = FUNC3(spi, &zpa2326_regmap_spi_config);
	if (FUNC0(regmap)) {
		FUNC2(&spi->dev, "failed to init registers map");
		return FUNC1(regmap);
	}

	/*
	 * Enforce SPI slave settings to prevent from DT misconfiguration.
	 *
	 * Clock is idle high. Sampling happens on trailing edge, i.e., rising
	 * edge. Maximum bus frequency is 1 MHz. Registers are 8 bits wide.
	 */
	spi->mode = SPI_MODE_3;
	spi->max_speed_hz = FUNC4(spi->max_speed_hz, 1000000U);
	spi->bits_per_word = 8;
	err = FUNC6(spi);
	if (err < 0)
		return err;

	return FUNC7(&spi->dev, FUNC5(spi)->name,
			     spi->irq, ZPA2326_DEVICE_ID, regmap);
}