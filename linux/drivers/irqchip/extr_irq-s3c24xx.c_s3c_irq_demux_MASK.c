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
struct s3c_irq_intc {int /*<<< orphan*/  domain; int /*<<< orphan*/  reg_mask; int /*<<< orphan*/  reg_pending; } ;
struct s3c_irq_data {unsigned long sub_bits; struct s3c_irq_intc* sub_intc; struct s3c_irq_intc* intc; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 struct irq_chip* FUNC4 (struct irq_desc*) ; 
 struct s3c_irq_data* FUNC5 (struct irq_desc*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct irq_desc *desc)
{
	struct irq_chip *chip = FUNC4(desc);
	struct s3c_irq_data *irq_data = FUNC5(desc);
	struct s3c_irq_intc *intc = irq_data->intc;
	struct s3c_irq_intc *sub_intc = irq_data->sub_intc;
	unsigned int n, offset, irq;
	unsigned long src, msk;

	/* we're using individual domains for the non-dt case
	 * and one big domain for the dt case where the subintc
	 * starts at hwirq number 32.
	 */
	offset = FUNC6(intc->domain) ? 32 : 0;

	FUNC1(chip, desc);

	src = FUNC8(sub_intc->reg_pending);
	msk = FUNC8(sub_intc->reg_mask);

	src &= ~msk;
	src &= irq_data->sub_bits;

	while (src) {
		n = FUNC0(src);
		src &= ~(1 << n);
		irq = FUNC7(sub_intc->domain, offset + n);
		FUNC3(irq);
	}

	FUNC2(chip, desc);
}