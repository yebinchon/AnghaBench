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
struct spi_device {int mode; int /*<<< orphan*/  modalias; int /*<<< orphan*/  dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct lm70 {int chip; struct spi_device* spi; int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int driver_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct device*) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 struct device* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct lm70*,int /*<<< orphan*/ ) ; 
 struct lm70* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lm70_groups ; 
 int /*<<< orphan*/  lm70_of_ids ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (struct spi_device*) ; 

__attribute__((used)) static int FUNC6(struct spi_device *spi)
{
	const struct of_device_id *match;
	struct device *hwmon_dev;
	struct lm70 *p_lm70;
	int chip;

	match = FUNC4(lm70_of_ids, &spi->dev);
	if (match)
		chip = (int)(uintptr_t)match->data;
	else
		chip = FUNC5(spi)->driver_data;

	/* signaling is SPI_MODE_0 */
	if (spi->mode & (SPI_CPOL | SPI_CPHA))
		return -EINVAL;

	/* NOTE:  we assume 8-bit words, and convert to 16 bits manually */

	p_lm70 = FUNC2(&spi->dev, sizeof(*p_lm70), GFP_KERNEL);
	if (!p_lm70)
		return -ENOMEM;

	FUNC3(&p_lm70->lock);
	p_lm70->chip = chip;
	p_lm70->spi = spi;

	hwmon_dev = FUNC1(&spi->dev,
							   spi->modalias,
							   p_lm70, lm70_groups);
	return FUNC0(hwmon_dev);
}