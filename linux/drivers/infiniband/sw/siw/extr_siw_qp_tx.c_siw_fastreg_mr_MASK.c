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
struct siw_sqe {int rkey; int /*<<< orphan*/  access; scalar_t__ base_mr; } ;
struct siw_mem {int stag_valid; int stag; int /*<<< orphan*/  va; int /*<<< orphan*/  perms; struct ib_pd* pd; } ;
struct siw_device {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
struct ib_mr {int rkey; int /*<<< orphan*/  iova; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct siw_mem*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_pd*,char*,int) ; 
 struct siw_mem* FUNC3 (struct siw_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct siw_mem*) ; 
 struct siw_device* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct ib_pd *pd, struct siw_sqe *sqe)
{
	struct ib_mr *base_mr = (struct ib_mr *)(uintptr_t)sqe->base_mr;
	struct siw_device *sdev = FUNC5(pd->device);
	struct siw_mem *mem = FUNC3(sdev, sqe->rkey  >> 8);
	int rv = 0;

	FUNC2(pd, "STag 0x%08x\n", sqe->rkey);

	if (FUNC6(!mem || !base_mr)) {
		FUNC0("siw: fastreg: STag 0x%08x unknown\n", sqe->rkey);
		return -EINVAL;
	}
	if (FUNC6(base_mr->rkey >> 8 != sqe->rkey  >> 8)) {
		FUNC0("siw: fastreg: STag 0x%08x: bad MR\n", sqe->rkey);
		rv = -EINVAL;
		goto out;
	}
	if (FUNC6(mem->pd != pd)) {
		FUNC0("siw: fastreg: PD mismatch\n");
		rv = -EINVAL;
		goto out;
	}
	if (FUNC6(mem->stag_valid)) {
		FUNC0("siw: fastreg: STag 0x%08x already valid\n", sqe->rkey);
		rv = -EINVAL;
		goto out;
	}
	/* Refresh STag since user may have changed key part */
	mem->stag = sqe->rkey;
	mem->perms = sqe->access;

	FUNC1(mem, "STag 0x%08x now valid\n", sqe->rkey);
	mem->va = base_mr->iova;
	mem->stag_valid = 1;
out:
	FUNC4(mem);
	return rv;
}