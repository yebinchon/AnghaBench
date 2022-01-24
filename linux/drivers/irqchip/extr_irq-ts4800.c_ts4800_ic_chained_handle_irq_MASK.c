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
typedef  int u16 ;
struct ts4800_irq_data {int /*<<< orphan*/  domain; scalar_t__ base; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ IRQ_STATUS ; 
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_desc*) ; 
 struct irq_chip* FUNC5 (struct irq_desc*) ; 
 struct ts4800_irq_data* FUNC6 (struct irq_desc*) ; 
 int FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct irq_desc *desc)
{
	struct ts4800_irq_data *data = FUNC6(desc);
	struct irq_chip *chip = FUNC5(desc);
	u16 status = FUNC8(data->base + IRQ_STATUS);

	FUNC1(chip, desc);

	if (FUNC9(status == 0)) {
		FUNC4(desc);
		goto out;
	}

	do {
		unsigned int bit = FUNC0(status);
		int irq = FUNC7(data->domain, bit);

		status &= ~(1 << bit);
		FUNC3(irq);
	} while (status);

out:
	FUNC2(chip, desc);
}