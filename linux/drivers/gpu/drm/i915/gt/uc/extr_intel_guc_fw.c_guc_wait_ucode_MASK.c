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
struct intel_uncore {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int ENOEXEC ; 
 int ENXIO ; 
 int GS_BOOTROM_MASK ; 
 int GS_BOOTROM_RSA_FAILED ; 
 int GS_UKERNEL_EXCEPTION ; 
 int GS_UKERNEL_MASK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_uncore*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct intel_uncore *uncore)
{
	u32 status;
	int ret;

	/*
	 * Wait for the GuC to start up.
	 * NB: Docs recommend not using the interrupt for completion.
	 * Measurements indicate this should take no more than 20ms, so a
	 * timeout here indicates that the GuC has failed and is unusable.
	 * (Higher levels of the driver may decide to reset the GuC and
	 * attempt the ucode load again if this happens.)
	 */
	ret = FUNC5(FUNC3(uncore, &status), 100);
	FUNC0("GuC status %#x\n", status);

	if ((status & GS_BOOTROM_MASK) == GS_BOOTROM_RSA_FAILED) {
		FUNC1("GuC firmware signature verification failed\n");
		ret = -ENOEXEC;
	}

	if ((status & GS_UKERNEL_MASK) == GS_UKERNEL_EXCEPTION) {
		FUNC1("GuC firmware exception. EIP: %#x\n",
			  FUNC4(uncore, FUNC2(13)));
		ret = -ENXIO;
	}

	return ret;
}