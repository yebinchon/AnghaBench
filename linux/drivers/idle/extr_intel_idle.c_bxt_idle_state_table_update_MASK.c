#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned int exit_latency; unsigned int target_residency; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_PKGC10_IRTL ; 
 int /*<<< orphan*/  MSR_PKGC6_IRTL ; 
 int /*<<< orphan*/  MSR_PKGC7_IRTL ; 
 int /*<<< orphan*/  MSR_PKGC8_IRTL ; 
 int /*<<< orphan*/  MSR_PKGC9_IRTL ; 
 TYPE_1__* bxt_cstates ; 
 unsigned int FUNC0 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static void FUNC2(void)
{
	unsigned long long msr;
	unsigned int usec;

	FUNC1(MSR_PKGC6_IRTL, msr);
	usec = FUNC0(msr);
	if (usec) {
		bxt_cstates[2].exit_latency = usec;
		bxt_cstates[2].target_residency = usec;
	}

	FUNC1(MSR_PKGC7_IRTL, msr);
	usec = FUNC0(msr);
	if (usec) {
		bxt_cstates[3].exit_latency = usec;
		bxt_cstates[3].target_residency = usec;
	}

	FUNC1(MSR_PKGC8_IRTL, msr);
	usec = FUNC0(msr);
	if (usec) {
		bxt_cstates[4].exit_latency = usec;
		bxt_cstates[4].target_residency = usec;
	}

	FUNC1(MSR_PKGC9_IRTL, msr);
	usec = FUNC0(msr);
	if (usec) {
		bxt_cstates[5].exit_latency = usec;
		bxt_cstates[5].target_residency = usec;
	}

	FUNC1(MSR_PKGC10_IRTL, msr);
	usec = FUNC0(msr);
	if (usec) {
		bxt_cstates[6].exit_latency = usec;
		bxt_cstates[6].target_residency = usec;
	}

}