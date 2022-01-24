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
struct irq_data {int /*<<< orphan*/  hwirq; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int EINVAL ; 
#define  IRQ_TYPE_EDGE_FALLING 131 
#define  IRQ_TYPE_EDGE_RISING 130 
#define  IRQ_TYPE_LEVEL_HIGH 129 
#define  IRQ_TYPE_LEVEL_LOW 128 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct irq_data *d,
					unsigned int flow_type)
{
	unsigned int reg, mask, polarity, type;

	reg = FUNC1(d->hwirq);
	mask = FUNC0(d->hwirq);
	polarity = FUNC4(FUNC2(reg));
	type = FUNC4(FUNC3(reg));

	switch (flow_type) {
	case IRQ_TYPE_EDGE_RISING:
		polarity |= mask;
		type |= mask;
		break;
	case IRQ_TYPE_EDGE_FALLING:
		polarity &= ~mask;
		type |= mask;
		break;
	case IRQ_TYPE_LEVEL_HIGH:
		polarity |= mask;
		type &= ~mask;
		break;
	case IRQ_TYPE_LEVEL_LOW:
		polarity &= ~mask;
		type &= ~mask;
		break;
	default:
		return -EINVAL;
	}

	FUNC5(polarity, FUNC2(reg));
	FUNC5(type, FUNC3(reg));

	return 0;
}