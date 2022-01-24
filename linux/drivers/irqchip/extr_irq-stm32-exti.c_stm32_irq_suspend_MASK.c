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
struct stm32_exti_chip_data {int dummy; } ;
struct irq_chip_generic {int /*<<< orphan*/  wake_active; struct stm32_exti_chip_data* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct irq_chip_generic*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip_generic*) ; 
 int /*<<< orphan*/  FUNC2 (struct stm32_exti_chip_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct irq_chip_generic *gc)
{
	struct stm32_exti_chip_data *chip_data = gc->private;

	FUNC0(gc);
	FUNC2(chip_data, gc->wake_active);
	FUNC1(gc);
}