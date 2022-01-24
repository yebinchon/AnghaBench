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
struct iommu_iotlb_gather {int dummy; } ;
struct io_pgtable_cfg {int dummy; } ;
struct TYPE_2__ {struct io_pgtable_cfg cfg; } ;
struct arm_lpae_io_pgtable {TYPE_1__ iop; } ;
typedef  int /*<<< orphan*/  pte ;
typedef  size_t phys_addr_t ;
typedef  int /*<<< orphan*/  arm_lpae_iopte ;

/* Variables and functions */
 size_t FUNC0 (int,struct arm_lpae_io_pgtable*) ; 
 size_t FUNC1 (struct arm_lpae_io_pgtable*) ; 
 int FUNC2 (unsigned long,int,struct arm_lpae_io_pgtable*) ; 
 int ARM_LPAE_MAX_LEVELS ; 
 scalar_t__ ARM_LPAE_PTE_TYPE_TABLE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (size_t,int /*<<< orphan*/ ,struct io_pgtable_cfg*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t,struct io_pgtable_cfg*) ; 
 int /*<<< orphan*/  FUNC6 (struct arm_lpae_io_pgtable*,size_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 size_t FUNC7 (struct arm_lpae_io_pgtable*,struct iommu_iotlb_gather*,unsigned long,size_t,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct io_pgtable_cfg*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct iommu_iotlb_gather*,unsigned long,size_t) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,struct arm_lpae_io_pgtable*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 size_t FUNC12 (int /*<<< orphan*/ ,struct arm_lpae_io_pgtable*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static size_t FUNC14(struct arm_lpae_io_pgtable *data,
				       struct iommu_iotlb_gather *gather,
				       unsigned long iova, size_t size,
				       arm_lpae_iopte blk_pte, int lvl,
				       arm_lpae_iopte *ptep)
{
	struct io_pgtable_cfg *cfg = &data->iop.cfg;
	arm_lpae_iopte pte, *tablep;
	phys_addr_t blk_paddr;
	size_t tablesz = FUNC1(data);
	size_t split_sz = FUNC0(lvl, data);
	int i, unmap_idx = -1;

	if (FUNC3(lvl == ARM_LPAE_MAX_LEVELS))
		return 0;

	tablep = FUNC4(tablesz, GFP_ATOMIC, cfg);
	if (!tablep)
		return 0; /* Bytes unmapped */

	if (size == split_sz)
		unmap_idx = FUNC2(iova, lvl, data);

	blk_paddr = FUNC12(blk_pte, data);
	pte = FUNC11(blk_pte);

	for (i = 0; i < tablesz / sizeof(pte); i++, blk_paddr += split_sz) {
		/* Unmap! */
		if (i == unmap_idx)
			continue;

		FUNC6(data, blk_paddr, pte, lvl, &tablep[i]);
	}

	pte = FUNC8(tablep, ptep, blk_pte, cfg);
	if (pte != blk_pte) {
		FUNC5(tablep, tablesz, cfg);
		/*
		 * We may race against someone unmapping another part of this
		 * block, but anything else is invalid. We can't misinterpret
		 * a page entry here since we're never at the last level.
		 */
		if (FUNC13(pte, lvl - 1) != ARM_LPAE_PTE_TYPE_TABLE)
			return 0;

		tablep = FUNC10(pte, data);
	} else if (unmap_idx >= 0) {
		FUNC9(&data->iop, gather, iova, size);
		return size;
	}

	return FUNC7(data, gather, iova, size, lvl, tablep);
}