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
 int /*<<< orphan*/  INTC_SYSCONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

void FUNC1(void)
{
	/* Re-enable autoidle */
	FUNC0(INTC_SYSCONFIG, 1);
	FUNC0(INTC_IDLE, 0);
}