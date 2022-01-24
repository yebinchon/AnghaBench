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
typedef  int /*<<< orphan*/  u32 ;
struct stm32_exti_chip_data {struct stm32_exti_bank* reg_bank; } ;
struct stm32_exti_bank {int /*<<< orphan*/  ftsr_ofst; int /*<<< orphan*/  rtsr_ofst; } ;
struct irq_data {int dummy; } ;
struct irq_chip_generic {struct stm32_exti_chip_data* private; } ;

/* Variables and functions */
 struct irq_chip_generic* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip_generic*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_chip_generic*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_chip_generic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_chip_generic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct stm32_exti_chip_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct stm32_exti_chip_data*) ; 
 int FUNC7 (struct irq_data*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct irq_data *d, unsigned int type)
{
	struct irq_chip_generic *gc = FUNC0(d);
	struct stm32_exti_chip_data *chip_data = gc->private;
	const struct stm32_exti_bank *stm32_bank = chip_data->reg_bank;
	u32 rtsr, ftsr;
	int err;

	FUNC1(gc);

	err = FUNC5(chip_data);
	if (err)
		goto unlock;

	rtsr = FUNC3(gc, stm32_bank->rtsr_ofst);
	ftsr = FUNC3(gc, stm32_bank->ftsr_ofst);

	err = FUNC7(d, type, &rtsr, &ftsr);
	if (err)
		goto unspinlock;

	FUNC4(gc, rtsr, stm32_bank->rtsr_ofst);
	FUNC4(gc, ftsr, stm32_bank->ftsr_ofst);

unspinlock:
	FUNC6(chip_data);
unlock:
	FUNC2(gc);

	return err;
}