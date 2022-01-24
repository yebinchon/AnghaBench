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
 int /*<<< orphan*/  INTC_IDLE ; 
 int /*<<< orphan*/  INTC_IDLE_TURBO ; 
 int /*<<< orphan*/  INTC_SYSCONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(void)
{
	/*
	 * Disable autoidle as it can stall interrupt controller,
	 * cf. errata ID i540 for 3430 (all revisions up to 3.1.x)
	 */
	FUNC0(INTC_SYSCONFIG, 0);
	FUNC0(INTC_IDLE, INTC_IDLE_TURBO);
}