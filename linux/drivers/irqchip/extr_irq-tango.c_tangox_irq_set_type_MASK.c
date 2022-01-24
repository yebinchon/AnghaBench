#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tangox_irq_chip {int dummy; } ;
struct irq_data {int /*<<< orphan*/  irq; int /*<<< orphan*/  mask; } ;
struct irq_chip_regs {scalar_t__ type; } ;
struct irq_chip_generic {TYPE_2__* chip_types; TYPE_1__* domain; } ;
struct TYPE_4__ {struct irq_chip_regs regs; } ;
struct TYPE_3__ {struct tangox_irq_chip* host_data; } ;

/* Variables and functions */
 scalar_t__ EDGE_CFG_FALL_CLR ; 
 scalar_t__ EDGE_CFG_FALL_SET ; 
 scalar_t__ EDGE_CFG_RISE_CLR ; 
 scalar_t__ EDGE_CFG_RISE_SET ; 
 int EINVAL ; 
#define  IRQ_TYPE_EDGE_FALLING 131 
#define  IRQ_TYPE_EDGE_RISING 130 
#define  IRQ_TYPE_LEVEL_HIGH 129 
#define  IRQ_TYPE_LEVEL_LOW 128 
 unsigned int IRQ_TYPE_SENSE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct tangox_irq_chip*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct irq_chip_generic* FUNC1 (struct irq_data*) ; 
 int FUNC2 (struct irq_data*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct irq_data *d, unsigned int flow_type)
{
	struct irq_chip_generic *gc = FUNC1(d);
	struct tangox_irq_chip *chip = gc->domain->host_data;
	struct irq_chip_regs *regs = &gc->chip_types[0].regs;

	switch (flow_type & IRQ_TYPE_SENSE_MASK) {
	case IRQ_TYPE_EDGE_RISING:
		FUNC0(chip, regs->type + EDGE_CFG_RISE_SET, d->mask);
		FUNC0(chip, regs->type + EDGE_CFG_FALL_CLR, d->mask);
		break;

	case IRQ_TYPE_EDGE_FALLING:
		FUNC0(chip, regs->type + EDGE_CFG_RISE_CLR, d->mask);
		FUNC0(chip, regs->type + EDGE_CFG_FALL_SET, d->mask);
		break;

	case IRQ_TYPE_LEVEL_HIGH:
		FUNC0(chip, regs->type + EDGE_CFG_RISE_CLR, d->mask);
		FUNC0(chip, regs->type + EDGE_CFG_FALL_CLR, d->mask);
		break;

	case IRQ_TYPE_LEVEL_LOW:
		FUNC0(chip, regs->type + EDGE_CFG_RISE_SET, d->mask);
		FUNC0(chip, regs->type + EDGE_CFG_FALL_SET, d->mask);
		break;

	default:
		FUNC3("Invalid trigger mode %x for IRQ %d\n",
		       flow_type, d->irq);
		return -EINVAL;
	}

	return FUNC2(d, flow_type);
}