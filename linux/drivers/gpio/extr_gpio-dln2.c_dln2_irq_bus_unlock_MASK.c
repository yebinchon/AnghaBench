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
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct dln2_gpio {unsigned int* irq_type; int /*<<< orphan*/  irq_lock; TYPE_1__ gpio; int /*<<< orphan*/  enabled_irqs; int /*<<< orphan*/  unmasked_irqs; } ;

/* Variables and functions */
 unsigned int DLN2_GPIO_EVENT_MASK ; 
 unsigned int DLN2_GPIO_EVENT_NONE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct dln2_gpio*,int,unsigned int,int /*<<< orphan*/ ) ; 
 struct dln2_gpio* FUNC3 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC4 (struct irq_data*) ; 
 int FUNC5 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct irq_data *irqd)
{
	struct gpio_chip *gc = FUNC4(irqd);
	struct dln2_gpio *dln2 = FUNC3(gc);
	int pin = FUNC5(irqd);
	int enabled, unmasked;
	unsigned type;
	int ret;

	enabled = FUNC8(pin, dln2->enabled_irqs);
	unmasked = FUNC8(pin, dln2->unmasked_irqs);

	if (enabled != unmasked) {
		if (unmasked) {
			type = dln2->irq_type[pin] & DLN2_GPIO_EVENT_MASK;
			FUNC7(pin, dln2->enabled_irqs);
		} else {
			type = DLN2_GPIO_EVENT_NONE;
			FUNC0(pin, dln2->enabled_irqs);
		}

		ret = FUNC2(dln2, pin, type, 0);
		if (ret)
			FUNC1(dln2->gpio.parent, "failed to set event\n");
	}

	FUNC6(&dln2->irq_lock);
}