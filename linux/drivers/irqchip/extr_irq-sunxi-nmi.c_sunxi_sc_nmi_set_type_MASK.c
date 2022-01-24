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
typedef  unsigned int u32 ;
struct irq_data {int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {unsigned int type; } ;
struct irq_chip_type {unsigned int type; TYPE_1__ regs; } ;
struct irq_chip_generic {unsigned int num_ct; struct irq_chip_type* chip_types; } ;

/* Variables and functions */
 int EBADR ; 
 unsigned int IRQF_TRIGGER_MASK ; 
 int IRQ_SET_MASK_OK ; 
#define  IRQ_TYPE_EDGE_FALLING 132 
#define  IRQ_TYPE_EDGE_RISING 131 
#define  IRQ_TYPE_LEVEL_HIGH 130 
#define  IRQ_TYPE_LEVEL_LOW 129 
#define  IRQ_TYPE_NONE 128 
 unsigned int SUNXI_NMI_SRC_TYPE_MASK ; 
 unsigned int SUNXI_SRC_TYPE_EDGE_FALLING ; 
 unsigned int SUNXI_SRC_TYPE_EDGE_RISING ; 
 unsigned int SUNXI_SRC_TYPE_LEVEL_HIGH ; 
 unsigned int SUNXI_SRC_TYPE_LEVEL_LOW ; 
 struct irq_chip_generic* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip_generic*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_chip_generic*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_data*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (struct irq_chip_generic*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct irq_chip_generic*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct irq_data *data, unsigned int flow_type)
{
	struct irq_chip_generic *gc = FUNC0(data);
	struct irq_chip_type *ct = gc->chip_types;
	u32 src_type_reg;
	u32 ctrl_off = ct->regs.type;
	unsigned int src_type;
	unsigned int i;

	FUNC1(gc);

	switch (flow_type & IRQF_TRIGGER_MASK) {
	case IRQ_TYPE_EDGE_FALLING:
		src_type = SUNXI_SRC_TYPE_EDGE_FALLING;
		break;
	case IRQ_TYPE_EDGE_RISING:
		src_type = SUNXI_SRC_TYPE_EDGE_RISING;
		break;
	case IRQ_TYPE_LEVEL_HIGH:
		src_type = SUNXI_SRC_TYPE_LEVEL_HIGH;
		break;
	case IRQ_TYPE_NONE:
	case IRQ_TYPE_LEVEL_LOW:
		src_type = SUNXI_SRC_TYPE_LEVEL_LOW;
		break;
	default:
		FUNC2(gc);
		FUNC5("Cannot assign multiple trigger modes to IRQ %d.\n",
			data->irq);
		return -EBADR;
	}

	FUNC4(data, flow_type);
	FUNC3(data, flow_type);

	for (i = 0; i < gc->num_ct; i++, ct++)
		if (ct->type & flow_type)
			ctrl_off = ct->regs.type;

	src_type_reg = FUNC6(gc, ctrl_off);
	src_type_reg &= ~SUNXI_NMI_SRC_TYPE_MASK;
	src_type_reg |= src_type;
	FUNC7(gc, ctrl_off, src_type_reg);

	FUNC2(gc);

	return IRQ_SET_MASK_OK;
}