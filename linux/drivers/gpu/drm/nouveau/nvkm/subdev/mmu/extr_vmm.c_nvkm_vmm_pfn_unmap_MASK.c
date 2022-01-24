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
typedef  scalar_t__ u64 ;
struct nvkm_vmm {TYPE_1__* func; } ;
struct nvkm_vma {int mapped; size_t refd; scalar_t__ addr; scalar_t__ size; scalar_t__ memory; } ;
struct TYPE_2__ {int /*<<< orphan*/ * page; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t NVKM_VMA_PAGE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 struct nvkm_vma* FUNC2 (struct nvkm_vma*,struct nvkm_vma*) ; 
 struct nvkm_vma* FUNC3 (struct nvkm_vmm*,scalar_t__) ; 
 struct nvkm_vma* FUNC4 (struct nvkm_vmm*,struct nvkm_vma*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_vmm*,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int,int) ; 

int
FUNC6(struct nvkm_vmm *vmm, u64 addr, u64 size)
{
	struct nvkm_vma *vma = FUNC3(vmm, addr);
	struct nvkm_vma *next;
	u64 limit = addr + size;
	u64 start = addr;

	if (!vma)
		return -EINVAL;

	do {
		if (!vma->mapped || vma->memory)
			continue;

		size = FUNC1(limit - start, vma->size - (start - vma->addr));

		FUNC5(vmm, &vmm->func->page[vma->refd],
					start, size, false, true);

		next = FUNC4(vmm, vma, start, size, 0, false);
		if (!FUNC0(!next)) {
			vma = next;
			vma->refd = NVKM_VMA_PAGE_NONE;
			vma->mapped = false;
		}
	} while ((vma = FUNC2(vma, next)) && (start = vma->addr) < limit);

	return 0;
}