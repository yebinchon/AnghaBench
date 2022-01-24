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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct amdgpu_cs_parser {int dummy; } ;
struct amdgpu_bo_va_mapping {int last; int start; } ;
struct amdgpu_bo {int dummy; } ;

/* Variables and functions */
 int AMDGPU_GPU_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,...) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct amdgpu_bo*) ; 
 int FUNC2 (struct amdgpu_cs_parser*,int,struct amdgpu_bo**,struct amdgpu_bo_va_mapping**) ; 
 scalar_t__ FUNC3 (struct amdgpu_cs_parser*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_cs_parser*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct amdgpu_cs_parser *p, uint32_t ib_idx,
			       int lo, int hi, unsigned size, uint32_t index)
{
	struct amdgpu_bo_va_mapping *mapping;
	struct amdgpu_bo *bo;
	uint64_t addr;
	int r;

	if (index == 0xffffffff)
		index = 0;

	addr = ((uint64_t)FUNC3(p, ib_idx, lo)) |
	       ((uint64_t)FUNC3(p, ib_idx, hi)) << 32;
	addr += ((uint64_t)size) * ((uint64_t)index);

	r = FUNC2(p, addr, &bo, &mapping);
	if (r) {
		FUNC0("Can't find BO for addr 0x%010Lx %d %d %d %d\n",
			  addr, lo, hi, size, index);
		return r;
	}

	if ((addr + (uint64_t)size) >
	    (mapping->last + 1) * AMDGPU_GPU_PAGE_SIZE) {
		FUNC0("BO to small for addr 0x%010Lx %d %d\n",
			  addr, lo, hi);
		return -EINVAL;
	}

	addr -= mapping->start * AMDGPU_GPU_PAGE_SIZE;
	addr += FUNC1(bo);
	addr -= ((uint64_t)size) * ((uint64_t)index);

	FUNC4(p, ib_idx, lo, FUNC5(addr));
	FUNC4(p, ib_idx, hi, FUNC6(addr));

	return 0;
}