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
struct irq_chip_regs {scalar_t__ ack; } ;
struct irq_chip_generic {scalar_t__ reg_base; } ;
struct TYPE_2__ {struct irq_chip_regs regs; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct irq_data*) ; 
 struct irq_chip_generic* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct irq_data *irqd)
{
	struct irq_chip_generic *gc = FUNC1(irqd);
	struct irq_chip_regs *regs = &FUNC0(irqd)->regs;

	FUNC2(gc->reg_base + regs->ack);
}