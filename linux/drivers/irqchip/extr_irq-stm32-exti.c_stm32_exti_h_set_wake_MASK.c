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
struct stm32_exti_chip_data {int /*<<< orphan*/  rlock; int /*<<< orphan*/  wake_active; } ;
struct irq_data {int hwirq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IRQS_PER_BANK ; 
 struct stm32_exti_chip_data* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct irq_data *d, unsigned int on)
{
	struct stm32_exti_chip_data *chip_data = FUNC1(d);
	u32 mask = FUNC0(d->hwirq % IRQS_PER_BANK);

	FUNC2(&chip_data->rlock);

	if (on)
		chip_data->wake_active |= mask;
	else
		chip_data->wake_active &= ~mask;

	FUNC3(&chip_data->rlock);

	return 0;
}