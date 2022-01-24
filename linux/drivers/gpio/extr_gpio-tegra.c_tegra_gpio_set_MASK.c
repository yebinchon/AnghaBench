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
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tegra_gpio_info*,unsigned int) ; 
 struct tegra_gpio_info* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_gpio_info*,int /*<<< orphan*/ ,unsigned int,int) ; 

__attribute__((used)) static void FUNC3(struct gpio_chip *chip, unsigned int offset,
			   int value)
{
	struct tegra_gpio_info *tgi = FUNC1(chip);

	FUNC2(tgi, FUNC0(tgi, offset), offset, value);
}