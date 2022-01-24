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
struct gpio_chip {int /*<<< orphan*/  parent; } ;
struct TYPE_2__ {unsigned int hwirq; } ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_1__* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *gc, unsigned int offset)
{
	int irq, index;

	for (index = 0;; index++) {
		irq = FUNC1(FUNC2(gc->parent), index);
		if (irq <= 0)
			break;
		if (FUNC0(irq)->hwirq == offset)
			return irq;
	}
	return -EINVAL;
}