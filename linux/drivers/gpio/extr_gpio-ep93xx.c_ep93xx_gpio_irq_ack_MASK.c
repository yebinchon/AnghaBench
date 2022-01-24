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
struct ep93xx_gpio {scalar_t__ base; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ IRQ_TYPE_EDGE_BOTH ; 
 scalar_t__* eoi_register_offset ; 
 int FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct ep93xx_gpio*,int) ; 
 int* gpio_int_type2 ; 
 struct ep93xx_gpio* FUNC3 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC4 (struct irq_data*) ; 
 scalar_t__ FUNC5 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct irq_data *d)
{
	struct gpio_chip *gc = FUNC4(d);
	struct ep93xx_gpio *epg = FUNC3(gc);
	int port = FUNC1(gc);
	int port_mask = FUNC0(d->irq & 7);

	if (FUNC5(d) == IRQ_TYPE_EDGE_BOTH) {
		gpio_int_type2[port] ^= port_mask; /* switch edge direction */
		FUNC2(epg, port);
	}

	FUNC6(port_mask, epg->base + eoi_register_offset[port]);
}