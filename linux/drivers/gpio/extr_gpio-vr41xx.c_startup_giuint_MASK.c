#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*) ; 
 TYPE_1__ vr41xx_gpio_chip ; 

__attribute__((used)) static unsigned int FUNC4(struct irq_data *data)
{
	int ret;

	ret = FUNC1(&vr41xx_gpio_chip, FUNC2(data));
	if (ret) {
		FUNC0(vr41xx_gpio_chip.parent,
			"unable to lock HW IRQ %lu for IRQ\n",
			data->hwirq);
		return ret;
	}

	/* Satisfy the .enable semantics by unmasking the line */
	FUNC3(data);
	return 0;
}