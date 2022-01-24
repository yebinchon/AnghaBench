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
typedef  size_t u32 ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;
struct combiner {size_t nregs; int /*<<< orphan*/  domain; TYPE_1__* regs; } ;
struct TYPE_2__ {size_t enabled; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct irq_chip* FUNC4 (struct irq_desc*) ; 
 struct combiner* FUNC5 (struct irq_desc*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,size_t,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11(struct irq_desc *desc)
{
	struct combiner *combiner = FUNC5(desc);
	struct irq_chip *chip = FUNC4(desc);
	u32 reg;

	FUNC1(chip, desc);

	for (reg = 0; reg < combiner->nregs; reg++) {
		int virq;
		int hwirq;
		u32 bit;
		u32 status;

		bit = FUNC9(combiner->regs[reg].addr);
		status = bit & combiner->regs[reg].enabled;
		if (bit && !status)
			FUNC8("Unexpected IRQ on CPU%d: (%08x %08lx %p)\n",
					    FUNC10(), bit,
					    combiner->regs[reg].enabled,
					    combiner->regs[reg].addr);

		while (status) {
			bit = FUNC0(status);
			status &= ~(1 << bit);
			hwirq = FUNC7(reg, bit);
			virq = FUNC6(combiner->domain, hwirq);
			if (virq > 0)
				FUNC3(virq);

		}
	}

	FUNC2(chip, desc);
}