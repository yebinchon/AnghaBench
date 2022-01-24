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
struct siw_mem {scalar_t__ stag_valid; struct ib_pd* pd; } ;
struct siw_device {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ib_pd*,char*,int) ; 
 struct siw_mem* FUNC1 (struct siw_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct siw_mem*) ; 
 struct siw_device* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct ib_pd *pd, u32 stag)
{
	struct siw_device *sdev = FUNC3(pd->device);
	struct siw_mem *mem = FUNC1(sdev, stag >> 8);
	int rv = 0;

	if (FUNC4(!mem)) {
		FUNC0(pd, "STag 0x%08x unknown\n", stag);
		return -EINVAL;
	}
	if (FUNC4(mem->pd != pd)) {
		FUNC0(pd, "PD mismatch for STag 0x%08x\n", stag);
		rv = -EACCES;
		goto out;
	}
	/*
	 * Per RDMA verbs definition, an STag may already be in invalid
	 * state if invalidation is requested. So no state check here.
	 */
	mem->stag_valid = 0;

	FUNC0(pd, "STag 0x%08x now invalid\n", stag);
out:
	FUNC2(mem);
	return rv;
}