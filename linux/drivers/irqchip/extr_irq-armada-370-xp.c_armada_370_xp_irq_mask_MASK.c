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
struct irq_data {int dummy; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 scalar_t__ ARMADA_370_XP_INT_CLEAR_ENABLE_OFFS ; 
 scalar_t__ ARMADA_370_XP_INT_SET_MASK_OFFS ; 
 int /*<<< orphan*/  FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ main_int_base ; 
 scalar_t__ per_cpu_int_base ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct irq_data *d)
{
	irq_hw_number_t hwirq = FUNC0(d);

	if (!FUNC1(hwirq))
		FUNC2(hwirq, main_int_base +
				ARMADA_370_XP_INT_CLEAR_ENABLE_OFFS);
	else
		FUNC2(hwirq, per_cpu_int_base +
				ARMADA_370_XP_INT_SET_MASK_OFFS);
}