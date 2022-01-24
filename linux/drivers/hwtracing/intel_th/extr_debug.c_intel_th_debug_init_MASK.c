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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * intel_th_dbg ; 

void FUNC2(void)
{
	intel_th_dbg = FUNC1("intel_th", NULL);
	if (FUNC0(intel_th_dbg))
		intel_th_dbg = NULL;
}