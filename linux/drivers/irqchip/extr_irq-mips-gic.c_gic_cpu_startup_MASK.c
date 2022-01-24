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
 int /*<<< orphan*/  GIC_VX_CTL_EIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ cpu_has_veic ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(unsigned int cpu)
{
	/* Enable or disable EIC */
	FUNC0(GIC_VX_CTL_EIC,
			  cpu_has_veic ? GIC_VX_CTL_EIC : 0);

	/* Clear all local IRQ masks (ie. disable all local interrupts) */
	FUNC2(~0);

	/* Invoke irq_cpu_online callbacks to enable desired interrupts */
	FUNC1();

	return 0;
}