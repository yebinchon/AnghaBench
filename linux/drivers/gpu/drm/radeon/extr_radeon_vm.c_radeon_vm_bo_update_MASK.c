#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int u64 ;
struct ttm_mem_reg {scalar_t__ mem_type; scalar_t__ start; } ;
struct radeon_vm {TYPE_3__* ids; int /*<<< orphan*/  status_lock; int /*<<< orphan*/  cleared; } ;
struct radeon_ib {unsigned int length_dw; TYPE_5__* fence; int /*<<< orphan*/  sync; } ;
struct TYPE_9__ {scalar_t__ vram_base_offset; } ;
struct radeon_device {TYPE_2__ vm_manager; int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {int start; int last; } ;
struct radeon_bo_va {int flags; int /*<<< orphan*/  last_pt_update; TYPE_4__ it; TYPE_7__* bo; int /*<<< orphan*/  vm_status; struct radeon_vm* vm; } ;
struct TYPE_8__ {int /*<<< orphan*/  ttm; } ;
struct TYPE_13__ {int flags; TYPE_1__ tbo; } ;
struct TYPE_12__ {int is_vm_update; } ;
struct TYPE_10__ {int /*<<< orphan*/  last_id_use; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int PAGE_SHIFT ; 
 int R600_PTE_GART_MASK ; 
 int R600_PTE_SYSTEM ; 
 int /*<<< orphan*/  R600_RING_TYPE_DMA_INDEX ; 
 int RADEON_GEM_GTT_UC ; 
 int RADEON_GEM_GTT_WC ; 
 unsigned int RADEON_NUM_RINGS ; 
 int RADEON_VM_PAGE_SNOOPED ; 
 int RADEON_VM_PAGE_SYSTEM ; 
 int RADEON_VM_PAGE_VALID ; 
 int RADEON_VM_PAGE_WRITEABLE ; 
 scalar_t__ TTM_PL_SYSTEM ; 
 scalar_t__ TTM_PL_TT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,TYPE_7__*,struct radeon_vm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,struct radeon_ib*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*,struct radeon_ib*) ; 
 int FUNC11 (struct radeon_device*,int /*<<< orphan*/ ,struct radeon_ib*,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC12 (struct radeon_device*,struct radeon_ib*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  radeon_vm_block_size ; 
 int /*<<< orphan*/  FUNC15 (struct radeon_vm*,int,int,TYPE_5__*) ; 
 int FUNC16 (int) ; 
 int FUNC17 (struct radeon_device*,struct radeon_vm*,struct radeon_ib*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct radeon_bo_va*) ; 

int FUNC21(struct radeon_device *rdev,
			struct radeon_bo_va *bo_va,
			struct ttm_mem_reg *mem)
{
	struct radeon_vm *vm = bo_va->vm;
	struct radeon_ib ib;
	unsigned nptes, ncmds, ndw;
	uint64_t addr;
	uint32_t flags;
	int r;

	if (!bo_va->it.start) {
		FUNC1(rdev->dev, "bo %p don't has a mapping in vm %p\n",
			bo_va->bo, vm);
		return -EINVAL;
	}

	FUNC18(&vm->status_lock);
	if (mem) {
		if (FUNC5(&bo_va->vm_status)) {
			FUNC19(&vm->status_lock);
			return 0;
		}
		FUNC4(&bo_va->vm_status);
	} else {
		FUNC3(&bo_va->vm_status);
		FUNC2(&bo_va->vm_status, &vm->cleared);
	}
	FUNC19(&vm->status_lock);

	bo_va->flags &= ~RADEON_VM_PAGE_VALID;
	bo_va->flags &= ~RADEON_VM_PAGE_SYSTEM;
	bo_va->flags &= ~RADEON_VM_PAGE_SNOOPED;
	if (bo_va->bo && FUNC14(bo_va->bo->tbo.ttm))
		bo_va->flags &= ~RADEON_VM_PAGE_WRITEABLE;

	if (mem) {
		addr = (u64)mem->start << PAGE_SHIFT;
		if (mem->mem_type != TTM_PL_SYSTEM) {
			bo_va->flags |= RADEON_VM_PAGE_VALID;
		}
		if (mem->mem_type == TTM_PL_TT) {
			bo_va->flags |= RADEON_VM_PAGE_SYSTEM;
			if (!(bo_va->bo->flags & (RADEON_GEM_GTT_WC | RADEON_GEM_GTT_UC)))
				bo_va->flags |= RADEON_VM_PAGE_SNOOPED;

		} else {
			addr += rdev->vm_manager.vram_base_offset;
		}
	} else {
		addr = 0;
	}

	FUNC20(bo_va);

	nptes = bo_va->it.last - bo_va->it.start + 1;

	/* reserve space for one command every (1 << BLOCK_SIZE) entries
	   or 2k dwords (whatever is smaller) */
	ncmds = (nptes >> FUNC6(radeon_vm_block_size, 11)) + 1;

	/* padding, etc. */
	ndw = 64;

	flags = FUNC16(bo_va->flags);
	if ((flags & R600_PTE_GART_MASK) == R600_PTE_GART_MASK) {
		/* only copy commands needed */
		ndw += ncmds * 7;

	} else if (flags & R600_PTE_SYSTEM) {
		/* header for write data commands */
		ndw += ncmds * 4;

		/* body of write data command */
		ndw += nptes * 2;

	} else {
		/* set page commands needed */
		ndw += ncmds * 10;

		/* two extra commands for begin/end of fragment */
		ndw += 2 * 10;
	}

	/* update too big for an IB */
	if (ndw > 0xfffff)
		return -ENOMEM;

	r = FUNC11(rdev, R600_RING_TYPE_DMA_INDEX, &ib, NULL, ndw * 4);
	if (r)
		return r;
	ib.length_dw = 0;

	if (!(bo_va->flags & RADEON_VM_PAGE_VALID)) {
		unsigned i;

		for (i = 0; i < RADEON_NUM_RINGS; ++i)
			FUNC13(&ib.sync, vm->ids[i].last_id_use);
	}

	r = FUNC17(rdev, vm, &ib, bo_va->it.start,
				  bo_va->it.last + 1, addr,
				  FUNC16(bo_va->flags));
	if (r) {
		FUNC10(rdev, &ib);
		return r;
	}

	FUNC7(rdev, &ib);
	FUNC0(ib.length_dw > ndw);

	r = FUNC12(rdev, &ib, NULL, false);
	if (r) {
		FUNC10(rdev, &ib);
		return r;
	}
	ib.fence->is_vm_update = true;
	FUNC15(vm, bo_va->it.start, bo_va->it.last + 1, ib.fence);
	FUNC9(&bo_va->last_pt_update);
	bo_va->last_pt_update = FUNC8(ib.fence);
	FUNC10(rdev, &ib);

	return 0;
}