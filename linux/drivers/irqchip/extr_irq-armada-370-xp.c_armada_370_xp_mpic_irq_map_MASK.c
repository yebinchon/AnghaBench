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
struct irq_domain {int dummy; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 scalar_t__ ARMADA_370_XP_INT_CLEAR_MASK_OFFS ; 
 scalar_t__ ARMADA_370_XP_INT_SET_ENABLE_OFFS ; 
 int /*<<< orphan*/  IRQ_LEVEL ; 
 int /*<<< orphan*/  armada_370_xp_irq_chip ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  handle_percpu_devid_irq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ main_int_base ; 
 scalar_t__ per_cpu_int_base ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct irq_domain *h,
				      unsigned int virq, irq_hw_number_t hw)
{
	FUNC0(FUNC2(virq));
	if (!FUNC9(hw))
		FUNC10(hw, per_cpu_int_base +
			ARMADA_370_XP_INT_CLEAR_MASK_OFFS);
	else
		FUNC10(hw, main_int_base + ARMADA_370_XP_INT_SET_ENABLE_OFFS);
	FUNC6(virq, IRQ_LEVEL);

	if (FUNC9(hw)) {
		FUNC4(virq);
		FUNC3(virq, &armada_370_xp_irq_chip,
					handle_percpu_devid_irq);
	} else {
		FUNC3(virq, &armada_370_xp_irq_chip,
					handle_level_irq);
		FUNC8(FUNC1(FUNC7(virq)));
	}
	FUNC5(virq);

	return 0;
}