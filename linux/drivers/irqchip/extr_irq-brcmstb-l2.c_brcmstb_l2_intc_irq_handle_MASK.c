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
struct irq_desc {int /*<<< orphan*/  lock; } ;
struct irq_chip {int dummy; } ;
struct brcmstb_l2_intc_data {int /*<<< orphan*/  domain; int /*<<< orphan*/  mask_offset; int /*<<< orphan*/  gc; int /*<<< orphan*/  status_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip*,struct irq_desc*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_desc*) ; 
 struct irq_chip* FUNC5 (struct irq_desc*) ; 
 struct brcmstb_l2_intc_data* FUNC6 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct irq_desc *desc)
{
	struct brcmstb_l2_intc_data *b = FUNC6(desc);
	struct irq_chip *chip = FUNC5(desc);
	unsigned int irq;
	u32 status;

	FUNC0(chip, desc);

	status = FUNC8(b->gc, b->status_offset) &
		~(FUNC8(b->gc, b->mask_offset));

	if (status == 0) {
		FUNC9(&desc->lock);
		FUNC4(desc);
		FUNC10(&desc->lock);
		goto out;
	}

	do {
		irq = FUNC2(status) - 1;
		status &= ~(1 << irq);
		FUNC3(FUNC7(b->domain, irq));
	} while (status);
out:
	FUNC1(chip, desc);
}