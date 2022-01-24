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
typedef  size_t u32 ;
struct nvkm_vmm_pt {int* pte; scalar_t__ sparse; scalar_t__* refs; struct nvkm_mmu_pt** pt; struct nvkm_vmm_pt** pde; } ;
struct nvkm_vmm_iter {int lvl; struct nvkm_vmm* vmm; struct nvkm_vmm_desc* desc; } ;
struct nvkm_vmm_desc {int bits; size_t size; TYPE_1__* func; int /*<<< orphan*/  type; int /*<<< orphan*/  align; } ;
struct nvkm_vmm {struct nvkm_mmu* mmu; } ;
struct nvkm_mmu_pt {int dummy; } ;
struct nvkm_mmu {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* pde ) (struct nvkm_vmm*,struct nvkm_vmm_pt*,size_t) ;int /*<<< orphan*/  (* invalid ) (struct nvkm_vmm*,struct nvkm_mmu_pt*,size_t,size_t) ;int /*<<< orphan*/  (* sparse ) (struct nvkm_vmm*,struct nvkm_mmu_pt*,size_t,size_t) ;int /*<<< orphan*/  (* unmap ) (struct nvkm_vmm*,struct nvkm_mmu_pt*,size_t,size_t) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  LPT ; 
 int NVKM_VMM_PTE_SPTES ; 
 int NVKM_VMM_PTE_VALID ; 
 int /*<<< orphan*/  SPT ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_vmm_iter*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,size_t) ; 
 struct nvkm_mmu_pt* FUNC2 (struct nvkm_mmu*,size_t,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_vmm_desc const*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_vmm_iter*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_vmm_desc const*,struct nvkm_vmm_pt*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_vmm_iter*) ; 
 int /*<<< orphan*/  FUNC7 (struct nvkm_vmm*,struct nvkm_mmu_pt*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct nvkm_vmm*,struct nvkm_mmu_pt*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct nvkm_vmm*,struct nvkm_mmu_pt*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct nvkm_vmm*,struct nvkm_mmu_pt*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct nvkm_vmm*,struct nvkm_mmu_pt*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct nvkm_vmm*,struct nvkm_vmm_pt*,size_t) ; 

__attribute__((used)) static bool
FUNC13(struct nvkm_vmm_iter *it, struct nvkm_vmm_pt *pgd, u32 pdei)
{
	const struct nvkm_vmm_desc *desc = &it->desc[it->lvl - 1];
	const int type = desc->type == SPT;
	struct nvkm_vmm_pt *pgt = pgd->pde[pdei];
	const bool zero = !pgt->sparse && !desc->func->invalid;
	struct nvkm_vmm *vmm = it->vmm;
	struct nvkm_mmu *mmu = vmm->mmu;
	struct nvkm_mmu_pt *pt;
	u32 pten = 1 << desc->bits;
	u32 pteb, ptei, ptes;
	u32 size = desc->size * pten;

	pgd->refs[0]++;

	pgt->pt[type] = FUNC2(mmu, size, desc->align, zero);
	if (!pgt->pt[type]) {
		it->lvl--;
		FUNC6(it);
		return false;
	}

	if (zero)
		goto done;

	pt = pgt->pt[type];

	if (desc->type == LPT && pgt->refs[1]) {
		/* SPT already exists covering the same range as this LPT,
		 * which means we need to be careful that any LPTEs which
		 * overlap valid SPTEs are unmapped as opposed to invalid
		 * or sparse, which would prevent the MMU from looking at
		 * the SPTEs on some GPUs.
		 */
		for (ptei = pteb = 0; ptei < pten; pteb = ptei) {
			bool spte = pgt->pte[ptei] & NVKM_VMM_PTE_SPTES;
			for (ptes = 1, ptei++; ptei < pten; ptes++, ptei++) {
				bool next = pgt->pte[ptei] & NVKM_VMM_PTE_SPTES;
				if (spte != next)
					break;
			}

			if (!spte) {
				if (pgt->sparse)
					desc->func->sparse(vmm, pt, pteb, ptes);
				else
					desc->func->invalid(vmm, pt, pteb, ptes);
				FUNC1(&pgt->pte[pteb], 0x00, ptes);
			} else {
				desc->func->unmap(vmm, pt, pteb, ptes);
				while (ptes--)
					pgt->pte[pteb++] |= NVKM_VMM_PTE_VALID;
			}
		}
	} else {
		if (pgt->sparse) {
			FUNC5(desc, pgt, 0, pten);
			desc->func->sparse(vmm, pt, 0, pten);
		} else {
			desc->func->invalid(vmm, pt, 0, pten);
		}
	}

done:
	FUNC0(it, "PDE write %s", FUNC3(desc));
	it->desc[it->lvl].func->pde(it->vmm, pgd, pdei);
	FUNC4(it);
	return true;
}