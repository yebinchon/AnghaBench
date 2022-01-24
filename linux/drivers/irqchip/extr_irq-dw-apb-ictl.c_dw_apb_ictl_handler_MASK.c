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
struct irq_domain {int revmap_size; } ;
struct irq_desc {int dummy; } ;
struct irq_chip_generic {scalar_t__ irq_base; scalar_t__ reg_base; } ;
struct irq_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ APB_INT_FINALSTATUS_L ; 
 int /*<<< orphan*/  FUNC0 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip*,struct irq_desc*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct irq_chip* FUNC4 (struct irq_desc*) ; 
 struct irq_domain* FUNC5 (struct irq_desc*) ; 
 int FUNC6 (struct irq_domain*,scalar_t__) ; 
 struct irq_chip_generic* FUNC7 (struct irq_domain*,int) ; 
 int FUNC8 (scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct irq_desc *desc)
{
	struct irq_domain *d = FUNC5(desc);
	struct irq_chip *chip = FUNC4(desc);
	int n;

	FUNC0(chip, desc);

	for (n = 0; n < d->revmap_size; n += 32) {
		struct irq_chip_generic *gc = FUNC7(d, n);
		u32 stat = FUNC8(gc->reg_base + APB_INT_FINALSTATUS_L);

		while (stat) {
			u32 hwirq = FUNC2(stat) - 1;
			u32 virq = FUNC6(d, gc->irq_base + hwirq);

			FUNC3(virq);
			stat &= ~(1 << hwirq);
		}
	}

	FUNC1(chip, desc);
}