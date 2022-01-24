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
struct spi_device {int dummy; } ;
struct gen_74x164_chip {int /*<<< orphan*/  lock; int /*<<< orphan*/  gpio_chip; int /*<<< orphan*/  gpiod_oe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct gen_74x164_chip* FUNC3 (struct spi_device*) ; 

__attribute__((used)) static int FUNC4(struct spi_device *spi)
{
	struct gen_74x164_chip *chip = FUNC3(spi);

	FUNC1(chip->gpiod_oe, 0);
	FUNC0(&chip->gpio_chip);
	FUNC2(&chip->lock);

	return 0;
}