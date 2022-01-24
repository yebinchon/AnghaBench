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
 unsigned int GIC_DUAL_DUAL ; 
 unsigned int GIC_DUAL_SINGLE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int GIC_POL_ACTIVE_HIGH ; 
 unsigned int GIC_POL_ACTIVE_LOW ; 
 unsigned int GIC_POL_FALLING_EDGE ; 
 unsigned int GIC_POL_RISING_EDGE ; 
 unsigned int GIC_TRIG_EDGE ; 
 unsigned int GIC_TRIG_LEVEL ; 
#define  IRQ_TYPE_EDGE_BOTH 132 
#define  IRQ_TYPE_EDGE_FALLING 131 
#define  IRQ_TYPE_EDGE_RISING 130 
#define  IRQ_TYPE_LEVEL_HIGH 129 
#define  IRQ_TYPE_LEVEL_LOW 128 
 unsigned int IRQ_TYPE_SENSE_MASK ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  gic_edge_irq_controller ; 
 int /*<<< orphan*/  gic_level_irq_controller ; 
 int /*<<< orphan*/  gic_lock ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  FUNC4 (struct irq_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct irq_data *d, unsigned int type)
{
	unsigned int irq, pol, trig, dual;
	unsigned long flags;

	irq = FUNC0(d->hwirq);

	FUNC5(&gic_lock, flags);
	switch (type & IRQ_TYPE_SENSE_MASK) {
	case IRQ_TYPE_EDGE_FALLING:
		pol = GIC_POL_FALLING_EDGE;
		trig = GIC_TRIG_EDGE;
		dual = GIC_DUAL_SINGLE;
		break;
	case IRQ_TYPE_EDGE_RISING:
		pol = GIC_POL_RISING_EDGE;
		trig = GIC_TRIG_EDGE;
		dual = GIC_DUAL_SINGLE;
		break;
	case IRQ_TYPE_EDGE_BOTH:
		pol = 0; /* Doesn't matter */
		trig = GIC_TRIG_EDGE;
		dual = GIC_DUAL_DUAL;
		break;
	case IRQ_TYPE_LEVEL_LOW:
		pol = GIC_POL_ACTIVE_LOW;
		trig = GIC_TRIG_LEVEL;
		dual = GIC_DUAL_SINGLE;
		break;
	case IRQ_TYPE_LEVEL_HIGH:
	default:
		pol = GIC_POL_ACTIVE_HIGH;
		trig = GIC_TRIG_LEVEL;
		dual = GIC_DUAL_SINGLE;
		break;
	}

	FUNC2(irq, pol);
	FUNC3(irq, trig);
	FUNC1(irq, dual);

	if (trig == GIC_TRIG_EDGE)
		FUNC4(d, &gic_edge_irq_controller,
						 handle_edge_irq, NULL);
	else
		FUNC4(d, &gic_level_irq_controller,
						 handle_level_irq, NULL);
	FUNC6(&gic_lock, flags);

	return 0;
}