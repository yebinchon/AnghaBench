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
struct stm32_exti_chip_data {int /*<<< orphan*/  rlock; int /*<<< orphan*/  mask_cache; struct stm32_exti_bank* reg_bank; } ;
struct stm32_exti_bank {int /*<<< orphan*/  imr_ofst; } ;
struct irq_data {TYPE_1__* parent_data; } ;
struct TYPE_2__ {scalar_t__ chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct irq_data*) ; 
 struct stm32_exti_chip_data* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct irq_data *d)
{
	struct stm32_exti_chip_data *chip_data = FUNC1(d);
	const struct stm32_exti_bank *stm32_bank = chip_data->reg_bank;

	FUNC2(&chip_data->rlock);
	chip_data->mask_cache = FUNC4(d, stm32_bank->imr_ofst);
	FUNC3(&chip_data->rlock);

	if (d->parent_data->chip)
		FUNC0(d);
}