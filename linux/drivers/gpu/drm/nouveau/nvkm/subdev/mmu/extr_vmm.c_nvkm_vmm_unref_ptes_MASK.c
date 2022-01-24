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
typedef  int /*<<< orphan*/  u32 ;
struct nvkm_vmm_pt {scalar_t__* refs; int /*<<< orphan*/ * pt; } ;
struct nvkm_vmm_iter {int /*<<< orphan*/  lvl; int /*<<< orphan*/  vmm; struct nvkm_vmm_pt** pt; struct nvkm_vmm_desc* desc; } ;
struct nvkm_vmm_desc {int /*<<< orphan*/  type; TYPE_1__* func; } ;
struct TYPE_2__ {int (* pfn_clear ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* pfn_unmap ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SPT ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_vmm_iter*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_vmm_desc const*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_vmm_iter*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_vmm_iter*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_vmm_iter*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_vmm_iter*,struct nvkm_vmm_pt*,struct nvkm_vmm_desc const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC8(struct nvkm_vmm_iter *it, bool pfn, u32 ptei, u32 ptes)
{
	const struct nvkm_vmm_desc *desc = it->desc;
	const int type = desc->type == SPT;
	struct nvkm_vmm_pt *pgt = it->pt[0];
	bool dma;

	if (pfn) {
		/* Need to clear PTE valid bits before we dma_unmap_page(). */
		dma = desc->func->pfn_clear(it->vmm, pgt->pt[type], ptei, ptes);
		if (dma) {
			/* GPU may have cached the PT, flush before unmap. */
			FUNC3(it);
			FUNC2(it);
			desc->func->pfn_unmap(it->vmm, pgt->pt[type], ptei, ptes);
		}
	}

	/* Drop PTE references. */
	pgt->refs[type] -= ptes;

	/* Dual-PTs need special handling, unless PDE becoming invalid. */
	if (desc->type == SPT && (pgt->refs[0] || pgt->refs[1]))
		FUNC5(it, pgt, desc, ptei, ptes);

	/* PT no longer neeed?  Destroy it. */
	if (!pgt->refs[type]) {
		it->lvl++;
		FUNC0(it, "%s empty", FUNC1(desc));
		it->lvl--;
		FUNC4(it);
		return false; /* PTE writes for unmap() not necessary. */
	}

	return true;
}