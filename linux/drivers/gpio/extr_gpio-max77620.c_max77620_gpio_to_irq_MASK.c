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
struct max77620_gpio {TYPE_1__* dev; } ;
struct max77620_chip {int /*<<< orphan*/  gpio_irq_data; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 struct max77620_chip* FUNC0 (int /*<<< orphan*/ ) ; 
 struct max77620_gpio* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *gc, unsigned int offset)
{
	struct max77620_gpio *mgpio = FUNC1(gc);
	struct max77620_chip *chip = FUNC0(mgpio->dev->parent);

	return FUNC2(chip->gpio_irq_data, offset);
}