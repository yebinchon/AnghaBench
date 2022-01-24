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
typedef  int /*<<< orphan*/  u32 ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct irq_chip_generic {struct dwapb_gpio* private; } ;
struct gpio_chip {int /*<<< orphan*/  bgpio_lock; } ;
struct dwapb_gpio {TYPE_1__* ports; } ;
struct TYPE_2__ {struct gpio_chip gc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GPIO_INTEN ; 
 int /*<<< orphan*/  FUNC1 (struct dwapb_gpio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dwapb_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct irq_chip_generic* FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct irq_data *d)
{
	struct irq_chip_generic *igc = FUNC3(d);
	struct dwapb_gpio *gpio = igc->private;
	struct gpio_chip *gc = &gpio->ports[0].gc;
	unsigned long flags;
	u32 val;

	FUNC4(&gc->bgpio_lock, flags);
	val = FUNC1(gpio, GPIO_INTEN);
	val |= FUNC0(d->hwirq);
	FUNC2(gpio, GPIO_INTEN, val);
	FUNC5(&gc->bgpio_lock, flags);
}