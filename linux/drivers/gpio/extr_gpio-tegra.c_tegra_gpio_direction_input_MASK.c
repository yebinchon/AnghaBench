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
struct tegra_gpio_info {int /*<<< orphan*/  dev; } ;
struct gpio_chip {scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tegra_gpio_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,int) ; 
 struct tegra_gpio_info* FUNC2 (struct gpio_chip*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_gpio_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_gpio_info*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip,
				      unsigned int offset)
{
	struct tegra_gpio_info *tgi = FUNC2(chip);
	int ret;

	FUNC5(tgi, FUNC0(tgi, offset), offset, 0);
	FUNC4(tgi, offset);

	ret = FUNC3(chip->base + offset);
	if (ret < 0)
		FUNC1(tgi->dev,
			"Failed to set pinctrl input direction of GPIO %d: %d",
			 chip->base + offset, ret);

	return ret;
}