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
struct intel_uncore {int dummy; } ;
struct intel_gt {struct intel_uncore* uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GEN6_GDRST ; 
 int FUNC1 (struct intel_uncore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_uncore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct intel_gt *gt, u32 hw_domain_mask)
{
	struct intel_uncore *uncore = gt->uncore;
	int err;

	/*
	 * GEN6_GDRST is not in the gt power well, no need to check
	 * for fifo space for the write or forcewake the chip for
	 * the read
	 */
	FUNC2(uncore, GEN6_GDRST, hw_domain_mask);

	/* Wait for the device to ack the reset requests */
	err = FUNC1(uncore,
					   GEN6_GDRST, hw_domain_mask, 0,
					   500, 0,
					   NULL);
	if (err)
		FUNC0("Wait for 0x%08x engines reset failed\n",
				 hw_domain_mask);

	return err;
}