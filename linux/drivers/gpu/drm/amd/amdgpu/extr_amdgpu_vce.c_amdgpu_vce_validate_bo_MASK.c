#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ttm_operation_ctx {int member_0; int member_1; } ;
struct amdgpu_cs_parser {int dummy; } ;
struct amdgpu_bo_va_mapping {int dummy; } ;
struct TYPE_4__ {unsigned int num_placement; } ;
struct amdgpu_bo {TYPE_2__ placement; int /*<<< orphan*/  tbo; TYPE_1__* placements; } ;
typedef  int int64_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_3__ {unsigned int lpfn; int /*<<< orphan*/  fpfn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,unsigned int,scalar_t__) ; 
 int FUNC1 (int) ; 
 int PAGE_SHIFT ; 
 int FUNC2 (struct amdgpu_cs_parser*,int,struct amdgpu_bo**,struct amdgpu_bo_va_mapping**) ; 
 scalar_t__ FUNC3 (struct amdgpu_cs_parser*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC5 (int,unsigned int) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,struct ttm_operation_ctx*) ; 

__attribute__((used)) static int FUNC7(struct amdgpu_cs_parser *p, uint32_t ib_idx,
				  int lo, int hi, unsigned size, int32_t index)
{
	int64_t offset = ((uint64_t)size) * ((int64_t)index);
	struct ttm_operation_ctx ctx = { false, false };
	struct amdgpu_bo_va_mapping *mapping;
	unsigned i, fpfn, lpfn;
	struct amdgpu_bo *bo;
	uint64_t addr;
	int r;

	addr = ((uint64_t)FUNC3(p, ib_idx, lo)) |
	       ((uint64_t)FUNC3(p, ib_idx, hi)) << 32;
	if (index >= 0) {
		addr += offset;
		fpfn = FUNC1(offset) >> PAGE_SHIFT;
		lpfn = 0x100000000ULL >> PAGE_SHIFT;
	} else {
		fpfn = 0;
		lpfn = (0x100000000ULL - FUNC1(offset)) >> PAGE_SHIFT;
	}

	r = FUNC2(p, addr, &bo, &mapping);
	if (r) {
		FUNC0("Can't find BO for addr 0x%010Lx %d %d %d %d\n",
			  addr, lo, hi, size, index);
		return r;
	}

	for (i = 0; i < bo->placement.num_placement; ++i) {
		bo->placements[i].fpfn = FUNC4(bo->placements[i].fpfn, fpfn);
		bo->placements[i].lpfn = bo->placements[i].lpfn ?
			FUNC5(bo->placements[i].lpfn, lpfn) : lpfn;
	}
	return FUNC6(&bo->tbo, &bo->placement, &ctx);
}