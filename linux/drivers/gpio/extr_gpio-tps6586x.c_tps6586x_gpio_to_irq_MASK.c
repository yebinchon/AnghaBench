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
struct tps6586x_gpio {int /*<<< orphan*/  parent; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 unsigned int TPS6586X_INT_PLDO_0 ; 
 struct tps6586x_gpio* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *gc, unsigned offset)
{
	struct tps6586x_gpio *tps6586x_gpio = FUNC0(gc);

	return FUNC1(tps6586x_gpio->parent,
				TPS6586X_INT_PLDO_0 + offset);
}