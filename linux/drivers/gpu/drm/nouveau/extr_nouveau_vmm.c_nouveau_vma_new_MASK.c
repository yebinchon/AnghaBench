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
struct nvif_vma {unsigned long long addr; } ;
struct nouveau_vmm {int /*<<< orphan*/  vmm; } ;
struct nouveau_vma {int refs; unsigned long long addr; int /*<<< orphan*/  head; int /*<<< orphan*/ * fence; int /*<<< orphan*/ * mem; struct nouveau_vmm* vmm; } ;
struct TYPE_5__ {scalar_t__ page; int /*<<< orphan*/  size; } ;
struct nouveau_mem {TYPE_2__ mem; } ;
struct TYPE_6__ {scalar_t__ mem_type; } ;
struct TYPE_4__ {TYPE_3__ mem; } ;
struct nouveau_bo {scalar_t__ page; TYPE_1__ bo; int /*<<< orphan*/  vma_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LAZY ; 
 int /*<<< orphan*/  PTES ; 
 scalar_t__ TTM_PL_SYSTEM ; 
 struct nouveau_vma* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nouveau_mem* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_vma**) ; 
 struct nouveau_vma* FUNC4 (struct nouveau_bo*,struct nouveau_vmm*) ; 
 int FUNC5 (struct nouveau_vma*,struct nouveau_mem*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nvif_vma*) ; 

int
FUNC7(struct nouveau_bo *nvbo, struct nouveau_vmm *vmm,
		struct nouveau_vma **pvma)
{
	struct nouveau_mem *mem = FUNC2(&nvbo->bo.mem);
	struct nouveau_vma *vma;
	struct nvif_vma tmp;
	int ret;

	if ((vma = *pvma = FUNC4(nvbo, vmm))) {
		vma->refs++;
		return 0;
	}

	if (!(vma = *pvma = FUNC0(sizeof(*vma), GFP_KERNEL)))
		return -ENOMEM;
	vma->vmm = vmm;
	vma->refs = 1;
	vma->addr = ~0ULL;
	vma->mem = NULL;
	vma->fence = NULL;
	FUNC1(&vma->head, &nvbo->vma_list);

	if (nvbo->bo.mem.mem_type != TTM_PL_SYSTEM &&
	    mem->mem.page == nvbo->page) {
		ret = FUNC6(&vmm->vmm, LAZY, false, mem->mem.page, 0,
				   mem->mem.size, &tmp);
		if (ret)
			goto done;

		vma->addr = tmp.addr;
		ret = FUNC5(vma, mem);
	} else {
		ret = FUNC6(&vmm->vmm, PTES, false, mem->mem.page, 0,
				   mem->mem.size, &tmp);
		vma->addr = tmp.addr;
	}

done:
	if (ret)
		FUNC3(pvma);
	return ret;
}