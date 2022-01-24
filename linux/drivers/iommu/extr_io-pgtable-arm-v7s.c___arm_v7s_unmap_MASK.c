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
struct TYPE_2__ {int quirks; } ;
struct io_pgtable {TYPE_1__ cfg; } ;
struct arm_v7s_io_pgtable {int /*<<< orphan*/  split_lock; struct io_pgtable iop; } ;
typedef  int /*<<< orphan*/  arm_v7s_iopte ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int ARM_V7S_CONT_PAGES ; 
 int FUNC1 (unsigned long,int) ; 
 size_t FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int IO_PGTABLE_QUIRK_NON_STRICT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,struct arm_v7s_io_pgtable*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC10 (struct arm_v7s_io_pgtable*,struct iommu_iotlb_gather*,unsigned long,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct arm_v7s_io_pgtable*,unsigned long,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct io_pgtable*,struct iommu_iotlb_gather*,unsigned long,size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct io_pgtable*,unsigned long,size_t,size_t) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int,struct arm_v7s_io_pgtable*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static size_t FUNC18(struct arm_v7s_io_pgtable *data,
			      struct iommu_iotlb_gather *gather,
			      unsigned long iova, size_t size, int lvl,
			      arm_v7s_iopte *ptep)
{
	arm_v7s_iopte pte[ARM_V7S_CONT_PAGES];
	struct io_pgtable *iop = &data->iop;
	int idx, i = 0, num_entries = size >> FUNC2(lvl);

	/* Something went horribly wrong and we ran out of page table */
	if (FUNC6(lvl > 2))
		return 0;

	idx = FUNC1(iova, lvl);
	ptep += idx;
	do {
		pte[i] = FUNC5(ptep[i]);
		if (FUNC6(!FUNC4(pte[i])))
			return 0;
	} while (++i < num_entries);

	/*
	 * If we've hit a contiguous 'large page' entry at this level, it
	 * needs splitting first, unless we're unmapping the whole lot.
	 *
	 * For splitting, we can't rewrite 16 PTEs atomically, and since we
	 * can't necessarily assume TEX remap we don't have a software bit to
	 * mark live entries being split. In practice (i.e. DMA API code), we
	 * will never be splitting large pages anyway, so just wrap this edge
	 * case in a lock for the sake of correctness and be done with it.
	 */
	if (num_entries <= 1 && FUNC9(pte[0], lvl)) {
		unsigned long flags;

		FUNC16(&data->split_lock, flags);
		pte[0] = FUNC11(data, iova, idx, lvl, ptep);
		FUNC17(&data->split_lock, flags);
	}

	/* If the size matches this level, we're in the right place */
	if (num_entries) {
		size_t blk_size = FUNC0(lvl);

		FUNC8(ptep, 0, num_entries, &iop->cfg);

		for (i = 0; i < num_entries; i++) {
			if (FUNC3(pte[i], lvl)) {
				/* Also flush any partial walks */
				FUNC13(iop, iova, blk_size,
						FUNC0(lvl + 1));
				ptep = FUNC14(pte[i], lvl, data);
				FUNC7(ptep, lvl + 1, data);
			} else if (iop->cfg.quirks & IO_PGTABLE_QUIRK_NON_STRICT) {
				/*
				 * Order the PTE update against queueing the IOVA, to
				 * guarantee that a flush callback from a different CPU
				 * has observed it before the TLBIALL can be issued.
				 */
				FUNC15();
			} else {
				FUNC12(iop, gather, iova, blk_size);
			}
			iova += blk_size;
		}
		return size;
	} else if (lvl == 1 && !FUNC3(pte[0], lvl)) {
		/*
		 * Insert a table at the next level to map the old region,
		 * minus the part we want to unmap
		 */
		return FUNC10(data, gather, iova, size, pte[0],
					       ptep);
	}

	/* Keep on walkin' */
	ptep = FUNC14(pte[0], lvl, data);
	return FUNC18(data, gather, iova, size, lvl + 1, ptep);
}