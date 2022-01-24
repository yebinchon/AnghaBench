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
struct adxl34x {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct adxl34x*) ; 
 scalar_t__ MAX_FREQ_NO_FIFODELAY ; 
 scalar_t__ MAX_SPI_FREQ_HZ ; 
 int FUNC1 (struct adxl34x*) ; 
 struct adxl34x* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  adxl34x_spi_bops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_device*,struct adxl34x*) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi)
{
	struct adxl34x *ac;

	/* don't exceed max specified SPI CLK frequency */
	if (spi->max_speed_hz > MAX_SPI_FREQ_HZ) {
		FUNC3(&spi->dev, "SPI CLK %d Hz too fast\n", spi->max_speed_hz);
		return -EINVAL;
	}

	ac = FUNC2(&spi->dev, spi->irq,
			   spi->max_speed_hz > MAX_FREQ_NO_FIFODELAY,
			   &adxl34x_spi_bops);

	if (FUNC0(ac))
		return FUNC1(ac);

	FUNC4(spi, ac);

	return 0;
}