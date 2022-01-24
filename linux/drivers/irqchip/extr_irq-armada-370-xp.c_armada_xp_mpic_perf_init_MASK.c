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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 scalar_t__ ARMADA_370_XP_INT_FABRIC_MASK_OFFS ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ per_cpu_int_base ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(void)
{
	unsigned long cpuid = FUNC1(FUNC2());

	/* Enable Performance Counter Overflow interrupts */
	FUNC3(FUNC0(cpuid),
	       per_cpu_int_base + ARMADA_370_XP_INT_FABRIC_MASK_OFFS);
}