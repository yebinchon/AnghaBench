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
struct thunderx_gpio {int base_msi; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 unsigned int IRQ_TYPE_LEVEL_HIGH ; 
 struct thunderx_gpio* FUNC0 (struct gpio_chip*) ; 

__attribute__((used)) static int FUNC1(struct gpio_chip *gc,
					       unsigned int child,
					       unsigned int child_type,
					       unsigned int *parent,
					       unsigned int *parent_type)
{
	struct thunderx_gpio *txgpio = FUNC0(gc);

	*parent = txgpio->base_msi + (2 * child);
	*parent_type = IRQ_TYPE_LEVEL_HIGH;
	return 0;
}