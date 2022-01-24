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
struct gpio_chip {int dummy; } ;
struct ep93xx_gpio {scalar_t__ base; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int FUNC1 (struct gpio_chip*) ; 
 int* gpio_int_debounce ; 
 struct ep93xx_gpio* FUNC2 (struct gpio_chip*) ; 
 scalar_t__* int_debounce_register_offset ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct gpio_chip *gc,
				     unsigned int offset, bool enable)
{
	struct ep93xx_gpio *epg = FUNC2(gc);
	int port = FUNC1(gc);
	int port_mask = FUNC0(offset);

	if (enable)
		gpio_int_debounce[port] |= port_mask;
	else
		gpio_int_debounce[port] &= ~port_mask;

	FUNC3(gpio_int_debounce[port],
	       epg->base + int_debounce_register_offset[port]);
}