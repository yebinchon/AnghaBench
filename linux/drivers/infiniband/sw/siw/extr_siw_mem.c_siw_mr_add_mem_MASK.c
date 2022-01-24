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
typedef  void* u64 ;
typedef  int u32 ;
struct xa_limit {int dummy; } ;
struct TYPE_2__ {int lkey; int rkey; } ;
struct siw_mr {TYPE_1__ base_mr; struct siw_mem* mem; } ;
struct siw_mem {int perms; int stag; int /*<<< orphan*/  ref; struct ib_pd* pd; void* len; void* va; struct siw_device* sdev; scalar_t__ stag_valid; void* mem_obj; } ;
struct siw_device {int /*<<< orphan*/  mem_xa; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IWARP_ACCESS_MASK ; 
 struct xa_limit FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct siw_mem*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct siw_mem* FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct siw_device* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int*,struct siw_mem*,struct xa_limit,int*,int /*<<< orphan*/ ) ; 

int FUNC7(struct siw_mr *mr, struct ib_pd *pd, void *mem_obj,
		   u64 start, u64 len, int rights)
{
	struct siw_device *sdev = FUNC5(pd->device);
	struct siw_mem *mem = FUNC4(sizeof(*mem), GFP_KERNEL);
	struct xa_limit limit = FUNC0(1, 0x00ffffff);
	u32 id, next;

	if (!mem)
		return -ENOMEM;

	mem->mem_obj = mem_obj;
	mem->stag_valid = 0;
	mem->sdev = sdev;
	mem->va = start;
	mem->len = len;
	mem->pd = pd;
	mem->perms = rights & IWARP_ACCESS_MASK;
	FUNC3(&mem->ref);

	mr->mem = mem;

	FUNC1(&next, 4);
	next &= 0x00ffffff;

	if (FUNC6(&sdev->mem_xa, &id, mem, limit, &next,
	    GFP_KERNEL) < 0) {
		FUNC2(mem);
		return -ENOMEM;
	}
	/* Set the STag index part */
	mem->stag = id << 8;
	mr->base_mr.lkey = mr->base_mr.rkey = mem->stag;

	return 0;
}