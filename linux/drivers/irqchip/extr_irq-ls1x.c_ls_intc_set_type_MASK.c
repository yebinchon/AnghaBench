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
typedef  int /*<<< orphan*/  u32 ;
struct irq_data {int /*<<< orphan*/  mask; } ;
struct irq_chip_generic {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IRQ_TYPE_EDGE_FALLING 131 
#define  IRQ_TYPE_EDGE_RISING 130 
#define  IRQ_TYPE_LEVEL_HIGH 129 
#define  IRQ_TYPE_LEVEL_LOW 128 
 int /*<<< orphan*/  LS_REG_INTC_EDGE ; 
 int /*<<< orphan*/  LS_REG_INTC_POL ; 
 struct irq_chip_generic* FUNC0 (struct irq_data*) ; 
 int FUNC1 (struct irq_data*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_chip_generic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct irq_data *data, unsigned int type)
{
	struct irq_chip_generic *gc = FUNC0(data);
	u32 mask = data->mask;

	switch (type) {
	case IRQ_TYPE_LEVEL_HIGH:
		FUNC3(gc, LS_REG_INTC_EDGE, mask, false);
		FUNC3(gc, LS_REG_INTC_POL, mask, true);
		break;
	case IRQ_TYPE_LEVEL_LOW:
		FUNC3(gc, LS_REG_INTC_EDGE, mask, false);
		FUNC3(gc, LS_REG_INTC_POL, mask, false);
		break;
	case IRQ_TYPE_EDGE_RISING:
		FUNC3(gc, LS_REG_INTC_EDGE, mask, true);
		FUNC3(gc, LS_REG_INTC_POL, mask, true);
		break;
	case IRQ_TYPE_EDGE_FALLING:
		FUNC3(gc, LS_REG_INTC_EDGE, mask, true);
		FUNC3(gc, LS_REG_INTC_POL, mask, false);
		break;
	default:
		return -EINVAL;
	}

	FUNC2(data, type);
	return FUNC1(data, type);
}