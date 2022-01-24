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
struct irq_data {int dummy; } ;
struct irq_chip_generic {struct dwapb_gpio* private; } ;
struct gpio_chip {int dummy; } ;
struct dwapb_gpio {TYPE_1__* ports; } ;
struct TYPE_2__ {struct gpio_chip gc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpio_chip*,int /*<<< orphan*/ ) ; 
 struct irq_chip_generic* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*) ; 

__attribute__((used)) static void FUNC3(struct irq_data *d)
{
	struct irq_chip_generic *igc = FUNC1(d);
	struct dwapb_gpio *gpio = igc->private;
	struct gpio_chip *gc = &gpio->ports[0].gc;

	FUNC0(gc, FUNC2(d));
}