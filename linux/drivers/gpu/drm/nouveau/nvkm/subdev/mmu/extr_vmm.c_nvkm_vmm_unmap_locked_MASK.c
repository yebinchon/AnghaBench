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
struct nvkm_vmm_page {int dummy; } ;
struct nvkm_vmm {TYPE_1__* func; } ;
struct nvkm_vma {size_t refd; int /*<<< orphan*/  sparse; int /*<<< orphan*/  size; int /*<<< orphan*/  addr; scalar_t__ mapref; } ;
struct TYPE_2__ {struct nvkm_vmm_page* page; } ;

/* Variables and functions */
 size_t NVKM_VMA_PAGE_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_vmm*,struct nvkm_vmm_page const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_vmm*,struct nvkm_vmm_page const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_vmm*,struct nvkm_vma*) ; 

void
FUNC3(struct nvkm_vmm *vmm, struct nvkm_vma *vma, bool pfn)
{
	const struct nvkm_vmm_page *page = &vmm->func->page[vma->refd];

	if (vma->mapref) {
		FUNC1(vmm, page, vma->addr, vma->size, vma->sparse, pfn);
		vma->refd = NVKM_VMA_PAGE_NONE;
	} else {
		FUNC0(vmm, page, vma->addr, vma->size, vma->sparse, pfn);
	}

	FUNC2(vmm, vma);
}