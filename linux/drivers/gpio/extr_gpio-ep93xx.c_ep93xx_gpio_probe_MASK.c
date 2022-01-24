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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct gpio_chip {int dummy; } ;
struct ep93xx_gpio_bank {int /*<<< orphan*/  label; } ;
struct ep93xx_gpio {struct gpio_chip* gc; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int FUNC0 (struct ep93xx_gpio_bank*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct ep93xx_gpio* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct gpio_chip*,struct platform_device*,struct ep93xx_gpio*,struct ep93xx_gpio_bank*) ; 
 struct ep93xx_gpio_bank* ep93xx_gpio_banks ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct ep93xx_gpio *epg;
	int i;

	epg = FUNC4(&pdev->dev, sizeof(*epg), GFP_KERNEL);
	if (!epg)
		return -ENOMEM;

	epg->base = FUNC5(pdev, 0);
	if (FUNC1(epg->base))
		return FUNC2(epg->base);

	for (i = 0; i < FUNC0(ep93xx_gpio_banks); i++) {
		struct gpio_chip *gc = &epg->gc[i];
		struct ep93xx_gpio_bank *bank = &ep93xx_gpio_banks[i];

		if (FUNC6(gc, pdev, epg, bank))
			FUNC3(&pdev->dev, "Unable to add gpio bank %s\n",
				 bank->label);
	}

	return 0;
}