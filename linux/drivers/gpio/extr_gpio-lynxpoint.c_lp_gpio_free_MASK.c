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
struct lp_gpio {TYPE_1__* pdev; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int GPINDIS_BIT ; 
 int /*<<< orphan*/  LP_CONFIG2 ; 
 struct lp_gpio* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (struct gpio_chip*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct gpio_chip *chip, unsigned offset)
{
	struct lp_gpio *lg = FUNC0(chip);
	unsigned long conf2 = FUNC2(chip, offset, LP_CONFIG2);

	/* disable input sensing */
	FUNC3(FUNC1(conf2) | GPINDIS_BIT, conf2);

	FUNC4(&lg->pdev->dev);
}