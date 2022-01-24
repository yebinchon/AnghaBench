#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint64_t ;
typedef  scalar_t__ uint32_t ;
struct amdgpu_vm_update_params {unsigned int num_dw_left; scalar_t__ pages_addr; TYPE_5__* job; TYPE_4__* adev; } ;
struct amdgpu_bo {struct amdgpu_bo* shadow; } ;
struct TYPE_10__ {TYPE_3__* ibs; } ;
struct TYPE_7__ {TYPE_1__* vm_pte_funcs; } ;
struct TYPE_9__ {TYPE_2__ vm_manager; } ;
struct TYPE_8__ {int /*<<< orphan*/ * ptr; scalar_t__ length_dw; } ;
struct TYPE_6__ {int copy_pte_num_dw; } ;

/* Variables and functions */
 unsigned int AMDGPU_VM_SDMA_MAX_NUM_DW ; 
 int /*<<< orphan*/  AMDGPU_VM_SDMA_MIN_NUM_DW ; 
 int FUNC0 (TYPE_4__*,unsigned int,TYPE_5__**) ; 
 unsigned int FUNC1 (scalar_t__,unsigned int) ; 
 int FUNC2 (struct amdgpu_vm_update_params*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_vm_update_params*,struct amdgpu_bo*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_vm_update_params*,struct amdgpu_bo*,unsigned int,unsigned int,unsigned int,scalar_t__,unsigned int) ; 
 unsigned int FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct amdgpu_vm_update_params *p,
				 struct amdgpu_bo *bo, uint64_t pe,
				 uint64_t addr, unsigned count, uint32_t incr,
				 uint64_t flags)
{
	unsigned int i, ndw, nptes;
	uint64_t *pte;
	int r;

	do {
		ndw = p->num_dw_left;
		ndw -= p->job->ibs->length_dw;

		if (ndw < 32) {
			r = FUNC2(p, NULL);
			if (r)
				return r;

			/* estimate how many dw we need */
			ndw = 32;
			if (p->pages_addr)
				ndw += count * 2;
			ndw = FUNC5(ndw, AMDGPU_VM_SDMA_MIN_NUM_DW);
			ndw = FUNC6(ndw, AMDGPU_VM_SDMA_MAX_NUM_DW);

			r = FUNC0(p->adev, ndw * 4, &p->job);
			if (r)
				return r;

			p->num_dw_left = ndw;
		}

		if (!p->pages_addr) {
			/* set page commands needed */
			if (bo->shadow)
				FUNC4(p, bo->shadow, pe, addr,
							count, incr, flags);
			FUNC4(p, bo, pe, addr, count,
						incr, flags);
			return 0;
		}

		/* copy commands needed */
		ndw -= p->adev->vm_manager.vm_pte_funcs->copy_pte_num_dw *
			(bo->shadow ? 2 : 1);

		/* for padding */
		ndw -= 7;

		nptes = FUNC6(count, ndw / 2);

		/* Put the PTEs at the end of the IB. */
		p->num_dw_left -= nptes * 2;
		pte = (uint64_t *)&(p->job->ibs->ptr[p->num_dw_left]);
		for (i = 0; i < nptes; ++i, addr += incr) {
			pte[i] = FUNC1(p->pages_addr, addr);
			pte[i] |= flags;
		}

		if (bo->shadow)
			FUNC3(p, bo->shadow, pe, nptes);
		FUNC3(p, bo, pe, nptes);

		pe += nptes * 8;
		count -= nptes;
	} while (count);

	return 0;
}