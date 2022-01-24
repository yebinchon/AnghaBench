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
typedef  int u32 ;
struct irq_domain {int dummy; } ;
struct irq_desc {int dummy; } ;
struct irq_chip_generic {int dummy; } ;
struct irq_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct irq_chip* FUNC6 (struct irq_desc*) ; 
 struct irq_domain* FUNC7 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC8 (struct irq_domain*,int) ; 
 struct irq_chip_generic* FUNC9 (struct irq_domain*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct irq_chip_generic*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct irq_desc *desc)
{
	struct irq_chip *chip = FUNC6(desc);
	struct irq_domain *d = FUNC7(desc);
	struct irq_chip_generic *gc = FUNC9(d, 0);
	u32 reg = FUNC10(gc, FUNC1(0));

	FUNC3(chip, desc);

	while (reg) {
		u32 hwirq = FUNC2(reg);

		FUNC5(FUNC8(d, hwirq));
		reg &= ~(FUNC0(hwirq));
	}

	FUNC4(chip, desc);
}