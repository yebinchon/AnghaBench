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
struct gpio_chip {int dummy; } ;
struct bd9571mwv_gpio {TYPE_1__* bd; } ;
struct TYPE_2__ {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  BD9571MWV_GPIO_OUT ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 struct bd9571mwv_gpio* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct gpio_chip *chip, unsigned int offset,
			      int value)
{
	struct bd9571mwv_gpio *gpio = FUNC1(chip);

	FUNC2(gpio->bd->regmap, BD9571MWV_GPIO_OUT,
			   FUNC0(offset), value ? FUNC0(offset) : 0);
}