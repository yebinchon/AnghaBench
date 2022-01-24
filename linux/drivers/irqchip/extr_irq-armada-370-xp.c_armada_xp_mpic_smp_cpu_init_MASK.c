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

/* Variables and functions */
 scalar_t__ ARMADA_370_XP_INT_CLEAR_MASK_OFFS ; 
 scalar_t__ ARMADA_370_XP_INT_CONTROL ; 
 scalar_t__ ARMADA_370_XP_INT_SET_MASK_OFFS ; 
 scalar_t__ ARMADA_370_XP_IN_DRBEL_CAUSE_OFFS ; 
 scalar_t__ ARMADA_370_XP_IN_DRBEL_MSK_OFFS ; 
 int IPI_DOORBELL_MASK ; 
 scalar_t__ main_int_base ; 
 scalar_t__ per_cpu_int_base ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(void)
{
	u32 control;
	int nr_irqs, i;

	control = FUNC0(main_int_base + ARMADA_370_XP_INT_CONTROL);
	nr_irqs = (control >> 2) & 0x3ff;

	for (i = 0; i < nr_irqs; i++)
		FUNC1(i, per_cpu_int_base + ARMADA_370_XP_INT_SET_MASK_OFFS);

	/* Clear pending IPIs */
	FUNC1(0, per_cpu_int_base + ARMADA_370_XP_IN_DRBEL_CAUSE_OFFS);

	/* Enable first 8 IPIs */
	FUNC1(IPI_DOORBELL_MASK, per_cpu_int_base +
		ARMADA_370_XP_IN_DRBEL_MSK_OFFS);

	/* Unmask IPI interrupt */
	FUNC1(0, per_cpu_int_base + ARMADA_370_XP_INT_CLEAR_MASK_OFFS);
}