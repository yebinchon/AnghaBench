#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint64_t ;
struct amdgpu_vm_update_params {int /*<<< orphan*/  vm; struct amdgpu_device* adev; } ;
struct amdgpu_vm_pt_cursor {unsigned int pfn; int level; TYPE_2__* entry; } ;
struct TYPE_6__ {int root_level; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_3__ vm_manager; } ;
struct amdgpu_bo {int dummy; } ;
struct TYPE_4__ {struct amdgpu_bo* bo; } ;
struct TYPE_5__ {TYPE_1__ base; } ;

/* Variables and functions */
 unsigned int AMDGPU_GPU_PAGE_SIZE ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int AMDGPU_PTE_VALID ; 
 int AMDGPU_VM_PTB ; 
 scalar_t__ CHIP_VEGA10 ; 
 int ENOENT ; 
 int FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ ,struct amdgpu_vm_pt_cursor*) ; 
 unsigned int FUNC2 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_vm_update_params*,unsigned int,unsigned int,unsigned int,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,int /*<<< orphan*/ ,struct amdgpu_vm_pt_cursor*) ; 
 unsigned int FUNC5 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_vm_pt_cursor*) ; 
 scalar_t__ FUNC7 (struct amdgpu_device*,struct amdgpu_vm_pt_cursor*) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_device*,struct amdgpu_vm_pt_cursor*) ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_device*,int /*<<< orphan*/ ,unsigned int,struct amdgpu_vm_pt_cursor*) ; 
 int /*<<< orphan*/  FUNC10 (struct amdgpu_vm_update_params*,struct amdgpu_bo*,int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 unsigned int FUNC11 (unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC12(struct amdgpu_vm_update_params *params,
				 uint64_t start, uint64_t end,
				 uint64_t dst, uint64_t flags)
{
	struct amdgpu_device *adev = params->adev;
	struct amdgpu_vm_pt_cursor cursor;
	uint64_t frag_start = start, frag_end;
	unsigned int frag;
	int r;

	/* figure out the initial fragment */
	FUNC3(params, frag_start, end, flags, &frag, &frag_end);

	/* walk over the address space and update the PTs */
	FUNC9(adev, params->vm, start, &cursor);
	while (cursor.pfn < end) {
		unsigned shift, parent_shift, mask;
		uint64_t incr, entry_end, pe_start;
		struct amdgpu_bo *pt;

		r = FUNC1(params->adev, params->vm, &cursor);
		if (r)
			return r;

		pt = cursor.entry->base.bo;

		/* The root level can't be a huge page */
		if (cursor.level == adev->vm_manager.root_level) {
			if (!FUNC7(adev, &cursor))
				return -ENOENT;
			continue;
		}

		shift = FUNC5(adev, cursor.level);
		parent_shift = FUNC5(adev, cursor.level - 1);
		if (adev->asic_type < CHIP_VEGA10 &&
		    (flags & AMDGPU_PTE_VALID)) {
			/* No huge page support before GMC v9 */
			if (cursor.level != AMDGPU_VM_PTB) {
				if (!FUNC7(adev, &cursor))
					return -ENOENT;
				continue;
			}
		} else if (frag < shift) {
			/* We can't use this level when the fragment size is
			 * smaller than the address shift. Go to the next
			 * child entry and try again.
			 */
			if (!FUNC7(adev, &cursor))
				return -ENOENT;
			continue;
		} else if (frag >= parent_shift &&
			   cursor.level - 1 != adev->vm_manager.root_level) {
			/* If the fragment size is even larger than the parent
			 * shift we should go up one level and check it again
			 * unless one level up is the root level.
			 */
			if (!FUNC6(&cursor))
				return -ENOENT;
			continue;
		}

		/* Looks good so far, calculate parameters for the update */
		incr = (uint64_t)AMDGPU_GPU_PAGE_SIZE << shift;
		mask = FUNC2(adev, cursor.level);
		pe_start = ((cursor.pfn >> shift) & mask) * 8;
		entry_end = (uint64_t)(mask + 1) << shift;
		entry_end += cursor.pfn & ~(entry_end - 1);
		entry_end = FUNC11(entry_end, end);

		do {
			uint64_t upd_end = FUNC11(entry_end, frag_end);
			unsigned nptes = (upd_end - frag_start) >> shift;

			FUNC10(params, pt, cursor.level,
					       pe_start, dst, nptes, incr,
					       flags | FUNC0(frag));

			pe_start += nptes * 8;
			dst += (uint64_t)nptes * AMDGPU_GPU_PAGE_SIZE << shift;

			frag_start = upd_end;
			if (frag_start >= frag_end) {
				/* figure out the next fragment */
				FUNC3(params, frag_start, end,
						   flags, &frag, &frag_end);
				if (frag < shift)
					break;
			}
		} while (frag_start < entry_end);

		if (FUNC7(adev, &cursor)) {
			/* Free all child entries */
			while (cursor.pfn < frag_start) {
				FUNC4(adev, params->vm, &cursor);
				FUNC8(adev, &cursor);
			}

		} else if (frag >= shift) {
			/* or just move on to the next on the same level. */
			FUNC8(adev, &cursor);
		}
	}

	return 0;
}