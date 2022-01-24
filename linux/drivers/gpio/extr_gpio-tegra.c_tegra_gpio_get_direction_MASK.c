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
typedef  int u32 ;
struct tegra_gpio_info {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_gpio_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_gpio_info*,unsigned int) ; 
 struct tegra_gpio_info* FUNC4 (struct gpio_chip*) ; 
 int FUNC5 (struct tegra_gpio_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip,
				    unsigned int offset)
{
	struct tegra_gpio_info *tgi = FUNC4(chip);
	u32 pin_mask = FUNC0(FUNC1(offset));
	u32 cnf, oe;

	cnf = FUNC5(tgi, FUNC2(tgi, offset));
	if (!(cnf & pin_mask))
		return -EINVAL;

	oe = FUNC5(tgi, FUNC3(tgi, offset));

	return !(oe & pin_mask);
}