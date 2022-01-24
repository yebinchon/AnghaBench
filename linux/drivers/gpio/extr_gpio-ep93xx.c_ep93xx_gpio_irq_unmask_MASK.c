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
struct irq_data {int irq; } ;
struct gpio_chip {int dummy; } ;
struct ep93xx_gpio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct ep93xx_gpio*,int) ; 
 int /*<<< orphan*/ * gpio_int_unmasked ; 
 struct ep93xx_gpio* FUNC3 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC4 (struct irq_data*) ; 

__attribute__((used)) static void FUNC5(struct irq_data *d)
{
	struct gpio_chip *gc = FUNC4(d);
	struct ep93xx_gpio *epg = FUNC3(gc);
	int port = FUNC1(gc);

	gpio_int_unmasked[port] |= FUNC0(d->irq & 7);
	FUNC2(epg, port);
}