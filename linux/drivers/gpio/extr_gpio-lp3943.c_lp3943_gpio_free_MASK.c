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
struct lp3943_gpio {struct lp3943* lp3943; } ;
struct lp3943 {int /*<<< orphan*/  pin_used; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 struct lp3943_gpio* FUNC1 (struct gpio_chip*) ; 

__attribute__((used)) static void FUNC2(struct gpio_chip *chip, unsigned offset)
{
	struct lp3943_gpio *lp3943_gpio = FUNC1(chip);
	struct lp3943 *lp3943 = lp3943_gpio->lp3943;

	FUNC0(offset, &lp3943->pin_used);
}