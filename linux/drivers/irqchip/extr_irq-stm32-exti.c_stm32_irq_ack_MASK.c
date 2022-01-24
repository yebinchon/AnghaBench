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
struct stm32_exti_chip_data {struct stm32_exti_bank* reg_bank; } ;
struct stm32_exti_bank {scalar_t__ rpr_ofst; scalar_t__ fpr_ofst; } ;
struct irq_data {int /*<<< orphan*/  mask; } ;
struct irq_chip_generic {struct stm32_exti_chip_data* private; } ;

/* Variables and functions */
 scalar_t__ UNDEF_REG ; 
 struct irq_chip_generic* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip_generic*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_chip_generic*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_chip_generic*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct irq_data *d)
{
	struct irq_chip_generic *gc = FUNC0(d);
	struct stm32_exti_chip_data *chip_data = gc->private;
	const struct stm32_exti_bank *stm32_bank = chip_data->reg_bank;

	FUNC1(gc);

	FUNC3(gc, d->mask, stm32_bank->rpr_ofst);
	if (stm32_bank->fpr_ofst != UNDEF_REG)
		FUNC3(gc, d->mask, stm32_bank->fpr_ofst);

	FUNC2(gc);
}