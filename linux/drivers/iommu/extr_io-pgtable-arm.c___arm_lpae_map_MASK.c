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
struct io_pgtable_cfg {size_t pgsize_bitmap; int /*<<< orphan*/  coherent_walk; } ;
struct TYPE_2__ {int /*<<< orphan*/  fmt; struct io_pgtable_cfg cfg; } ;
struct arm_lpae_io_pgtable {TYPE_1__ iop; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  int arm_lpae_iopte ;

/* Variables and functions */
 size_t FUNC0 (int,struct arm_lpae_io_pgtable*) ; 
 size_t FUNC1 (struct arm_lpae_io_pgtable*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int,struct arm_lpae_io_pgtable*) ; 
 int ARM_LPAE_MAX_LEVELS ; 
 int ARM_LPAE_PTE_SW_SYNC ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int* FUNC5 (size_t,int /*<<< orphan*/ ,struct io_pgtable_cfg*) ; 
 int /*<<< orphan*/  FUNC6 (int*,size_t,struct io_pgtable_cfg*) ; 
 int /*<<< orphan*/  FUNC7 (int*,struct io_pgtable_cfg*) ; 
 int FUNC8 (struct arm_lpae_io_pgtable*,unsigned long,int /*<<< orphan*/ ,int,int,int*) ; 
 int FUNC9 (int*,int*,int /*<<< orphan*/ ,struct io_pgtable_cfg*) ; 
 int* FUNC10 (int,struct arm_lpae_io_pgtable*) ; 
 int /*<<< orphan*/  FUNC11 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  selftest_running ; 

__attribute__((used)) static int FUNC12(struct arm_lpae_io_pgtable *data, unsigned long iova,
			  phys_addr_t paddr, size_t size, arm_lpae_iopte prot,
			  int lvl, arm_lpae_iopte *ptep)
{
	arm_lpae_iopte *cptep, pte;
	size_t block_size = FUNC0(lvl, data);
	size_t tblsz = FUNC1(data);
	struct io_pgtable_cfg *cfg = &data->iop.cfg;

	/* Find our entry at the current level */
	ptep += FUNC2(iova, lvl, data);

	/* If we can install a leaf entry at this level, then do so */
	if (size == block_size && (size & cfg->pgsize_bitmap))
		return FUNC8(data, iova, paddr, prot, lvl, ptep);

	/* We can't allocate tables at the final level */
	if (FUNC4(lvl >= ARM_LPAE_MAX_LEVELS - 1))
		return -EINVAL;

	/* Grab a pointer to the next level */
	pte = FUNC3(*ptep);
	if (!pte) {
		cptep = FUNC5(tblsz, GFP_ATOMIC, cfg);
		if (!cptep)
			return -ENOMEM;

		pte = FUNC9(cptep, ptep, 0, cfg);
		if (pte)
			FUNC6(cptep, tblsz, cfg);
	} else if (!cfg->coherent_walk && !(pte & ARM_LPAE_PTE_SW_SYNC)) {
		FUNC7(ptep, cfg);
	}

	if (pte && !FUNC11(pte, lvl, data->iop.fmt)) {
		cptep = FUNC10(pte, data);
	} else if (pte) {
		/* We require an unmap first */
		FUNC4(!selftest_running);
		return -EEXIST;
	}

	/* Rinse, repeat */
	return FUNC12(data, iova, paddr, size, prot, lvl + 1, cptep);
}