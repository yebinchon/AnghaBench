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
struct spi_device {int bits_per_word; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct ad714x_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPI ; 
 scalar_t__ FUNC0 (struct ad714x_chip*) ; 
 int FUNC1 (struct ad714x_chip*) ; 
 struct ad714x_chip* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ad714x_spi_read ; 
 int /*<<< orphan*/  ad714x_spi_write ; 
 int /*<<< orphan*/  FUNC3 (struct spi_device*,struct ad714x_chip*) ; 
 int FUNC4 (struct spi_device*) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi)
{
	struct ad714x_chip *chip;
	int err;

	spi->bits_per_word = 8;
	err = FUNC4(spi);
	if (err < 0)
		return err;

	chip = FUNC2(&spi->dev, BUS_SPI, spi->irq,
			    ad714x_spi_read, ad714x_spi_write);
	if (FUNC0(chip))
		return FUNC1(chip);

	FUNC3(spi, chip);

	return 0;
}