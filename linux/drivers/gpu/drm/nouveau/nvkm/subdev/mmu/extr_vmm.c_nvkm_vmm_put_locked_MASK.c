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
typedef  size_t u8 ;
typedef  scalar_t__ u64 ;
struct nvkm_vmm_page {int dummy; } ;
struct nvkm_vmm {TYPE_1__* func; } ;
struct nvkm_vma {int mapped; size_t refd; size_t page; int used; int user; scalar_t__ size; scalar_t__ addr; scalar_t__ sparse; scalar_t__ mapref; scalar_t__ part; int /*<<< orphan*/ * memory; } ;
struct TYPE_2__ {struct nvkm_vmm_page* page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 size_t const NVKM_VMA_PAGE_NONE ; 
 struct nvkm_vma* FUNC1 (struct nvkm_vma*,struct nvkm_vma*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_vmm*,struct nvkm_vma*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_vmm*,struct nvkm_vmm_page const*,scalar_t__ const,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_vmm*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_vmm*,struct nvkm_vmm_page const*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_vmm*,struct nvkm_vmm_page const*,scalar_t__ const,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nvkm_vmm*,struct nvkm_vma*) ; 
 int /*<<< orphan*/  FUNC8 (struct nvkm_vmm*,struct nvkm_vma*) ; 

void
FUNC9(struct nvkm_vmm *vmm, struct nvkm_vma *vma)
{
	const struct nvkm_vmm_page *page = vmm->func->page;
	struct nvkm_vma *next = vma;

	FUNC0(vma->part);

	if (vma->mapref || !vma->sparse) {
		do {
			const bool mem = next->memory != NULL;
			const bool map = next->mapped;
			const u8  refd = next->refd;
			const u64 addr = next->addr;
			u64 size = next->size;

			/* Merge regions that are in the same state. */
			while ((next = FUNC1(next, next)) && next->part &&
			       (next->mapped == map) &&
			       (next->memory != NULL) == mem &&
			       (next->refd == refd))
				size += next->size;

			if (map) {
				/* Region(s) are mapped, merge the unmap
				 * and dereference into a single walk of
				 * the page tree.
				 */
				FUNC6(vmm, &page[refd], addr,
							size, vma->sparse,
							!mem);
			} else
			if (refd != NVKM_VMA_PAGE_NONE) {
				/* Drop allocation-time PTE references. */
				FUNC3(vmm, &page[refd], addr, size);
			}
		} while (next && next->part);
	}

	/* Merge any mapped regions that were split from the initial
	 * address-space allocation back into the allocated VMA, and
	 * release memory/compression resources.
	 */
	next = vma;
	do {
		if (next->mapped)
			FUNC8(vmm, next);
	} while ((next = FUNC1(vma, next)) && next->part);

	if (vma->sparse && !vma->mapref) {
		/* Sparse region that was allocated with a fixed page size,
		 * meaning all relevant PTEs were referenced once when the
		 * region was allocated, and remained that way, regardless
		 * of whether memory was mapped into it afterwards.
		 *
		 * The process of unmapping, unsparsing, and dereferencing
		 * PTEs can be done in a single page tree walk.
		 */
		FUNC5(vmm, &page[vma->refd], vma->addr, vma->size);
	} else
	if (vma->sparse) {
		/* Sparse region that wasn't allocated with a fixed page size,
		 * PTE references were taken both at allocation time (to make
		 * the GPU see the region as sparse), and when mapping memory
		 * into the region.
		 *
		 * The latter was handled above, and the remaining references
		 * are dealt with here.
		 */
		FUNC4(vmm, vma->addr, vma->size, false);
	}

	/* Remove VMA from the list of allocated nodes. */
	FUNC2(vmm, vma);

	/* Merge VMA back into the free list. */
	vma->page = NVKM_VMA_PAGE_NONE;
	vma->refd = NVKM_VMA_PAGE_NONE;
	vma->used = false;
	vma->user = false;
	FUNC7(vmm, vma);
}