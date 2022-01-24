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
typedef  int /*<<< orphan*/  uint32_t ;
struct ingenic_intc_data {unsigned int num_chips; scalar_t__ base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned int CHIP_SIZE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ JZ4740_IRQ_BASE ; 
 scalar_t__ JZ_REG_INTC_PENDING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct ingenic_intc_data* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct ingenic_intc_data *intc = FUNC2(irq);
	uint32_t irq_reg;
	unsigned i;

	for (i = 0; i < intc->num_chips; i++) {
		irq_reg = FUNC3(intc->base + (i * CHIP_SIZE) +
				JZ_REG_INTC_PENDING);
		if (!irq_reg)
			continue;

		FUNC1(FUNC0(irq_reg) + (i * 32) + JZ4740_IRQ_BASE);
	}

	return IRQ_HANDLED;
}