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
struct radeon_vm_pt {int dummy; } ;
struct radeon_vm {int /*<<< orphan*/ * page_directory; int /*<<< orphan*/ * page_tables; int /*<<< orphan*/  cleared; int /*<<< orphan*/  freed; int /*<<< orphan*/  invalidated; int /*<<< orphan*/  status_lock; int /*<<< orphan*/  va; int /*<<< orphan*/  mutex; TYPE_1__* ids; int /*<<< orphan*/ * ib_bo_va; } ;
struct radeon_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * last_id_use; int /*<<< orphan*/ * flushed_updates; scalar_t__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_VRAM ; 
 int RADEON_NUM_RINGS ; 
 int /*<<< orphan*/  RADEON_VM_PTB_ALIGN_SIZE ; 
 int RADEON_VM_PTE_COUNT ; 
 int /*<<< orphan*/  RB_ROOT_CACHED ; 
 int /*<<< orphan*/ * FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct radeon_device*,unsigned int,unsigned int const,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 int FUNC7 (struct radeon_device*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC8 (struct radeon_device*) ; 
 unsigned int FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct radeon_device *rdev, struct radeon_vm *vm)
{
	const unsigned align = FUNC3(RADEON_VM_PTB_ALIGN_SIZE,
		RADEON_VM_PTE_COUNT * 8);
	unsigned pd_size, pd_entries, pts_size;
	int i, r;

	vm->ib_bo_va = NULL;
	for (i = 0; i < RADEON_NUM_RINGS; ++i) {
		vm->ids[i].id = 0;
		vm->ids[i].flushed_updates = NULL;
		vm->ids[i].last_id_use = NULL;
	}
	FUNC4(&vm->mutex);
	vm->va = RB_ROOT_CACHED;
	FUNC10(&vm->status_lock);
	FUNC1(&vm->invalidated);
	FUNC1(&vm->freed);
	FUNC1(&vm->cleared);

	pd_size = FUNC8(rdev);
	pd_entries = FUNC9(rdev);

	/* allocate page table array */
	pts_size = pd_entries * sizeof(struct radeon_vm_pt);
	vm->page_tables = FUNC2(pts_size, GFP_KERNEL);
	if (vm->page_tables == NULL) {
		FUNC0("Cannot allocate memory for page table array\n");
		return -ENOMEM;
	}

	r = FUNC5(rdev, pd_size, align, true,
			     RADEON_GEM_DOMAIN_VRAM, 0, NULL,
			     NULL, &vm->page_directory);
	if (r)
		return r;

	r = FUNC7(rdev, vm->page_directory);
	if (r) {
		FUNC6(&vm->page_directory);
		vm->page_directory = NULL;
		return r;
	}

	return 0;
}