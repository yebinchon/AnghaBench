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
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_gpio_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_gpio_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_gpio_info*,unsigned int) ; 
 struct tegra_gpio_info* FUNC5 (struct gpio_chip*) ; 
 unsigned int FUNC6 (struct tegra_gpio_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct gpio_chip *chip, unsigned int offset)
{
	struct tegra_gpio_info *tgi = FUNC5(chip);
	unsigned int bval = FUNC0(FUNC1(offset));

	/* If gpio is in output mode then read from the out value */
	if (FUNC6(tgi, FUNC3(tgi, offset)) & bval)
		return !!(FUNC6(tgi, FUNC4(tgi, offset)) & bval);

	return !!(FUNC6(tgi, FUNC2(tgi, offset)) & bval);
}