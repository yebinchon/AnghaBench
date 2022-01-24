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

/* Variables and functions */
 size_t PSCI_FN_CPU_ON ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * psci_function_id ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(unsigned long cpuid, unsigned long entry_point)
{
	int err;
	u32 fn;

	fn = psci_function_id[PSCI_FN_CPU_ON];
	err = FUNC0(fn, cpuid, entry_point, 0);
	return FUNC1(err);
}