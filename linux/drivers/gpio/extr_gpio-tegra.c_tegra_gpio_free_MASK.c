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
struct tegra_gpio_info {int dummy; } ;
struct gpio_chip {scalar_t__ base; } ;

/* Variables and functions */
 struct tegra_gpio_info* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_gpio_info*,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct gpio_chip *chip, unsigned int offset)
{
	struct tegra_gpio_info *tgi = FUNC0(chip);

	FUNC1(chip->base + offset);
	FUNC2(tgi, offset);
}