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
struct io_pgtable {int /*<<< orphan*/  fmt; TYPE_1__ cfg; } ;
struct arm_lpae_io_pgtable {struct io_pgtable iop; } ;
typedef  int /*<<< orphan*/  arm_lpae_iopte ;

/* Variables and functions */
 size_t FUNC0 (int,struct arm_lpae_io_pgtable*) ; 
 int /*<<< orphan*/  FUNC1 (struct arm_lpae_io_pgtable*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int,struct arm_lpae_io_pgtable*) ; 
 int ARM_LPAE_MAX_LEVELS ; 
 int IO_PGTABLE_QUIRK_NON_STRICT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct arm_lpae_io_pgtable*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 size_t FUNC7 (struct arm_lpae_io_pgtable*,struct iommu_iotlb_gather*,unsigned long,size_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct io_pgtable*,struct iommu_iotlb_gather*,unsigned long,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct io_pgtable*,unsigned long,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,struct arm_lpae_io_pgtable*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static size_t FUNC13(struct arm_lpae_io_pgtable *data,
			       struct iommu_iotlb_gather *gather,
			       unsigned long iova, size_t size, int lvl,
			       arm_lpae_iopte *ptep)
{
	arm_lpae_iopte pte;
	struct io_pgtable *iop = &data->iop;

	/* Something went horribly wrong and we ran out of page table */
	if (FUNC4(lvl == ARM_LPAE_MAX_LEVELS))
		return 0;

	ptep += FUNC2(iova, lvl, data);
	pte = FUNC3(*ptep);
	if (FUNC4(!pte))
		return 0;

	/* If the size matches this level, we're in the right place */
	if (size == FUNC0(lvl, data)) {
		FUNC6(ptep, 0, &iop->cfg);

		if (!FUNC11(pte, lvl, iop->fmt)) {
			/* Also flush any partial walks */
			FUNC9(iop, iova, size,
						  FUNC1(data));
			ptep = FUNC10(pte, data);
			FUNC5(data, lvl + 1, ptep);
		} else if (iop->cfg.quirks & IO_PGTABLE_QUIRK_NON_STRICT) {
			/*
			 * Order the PTE update against queueing the IOVA, to
			 * guarantee that a flush callback from a different CPU
			 * has observed it before the TLBIALL can be issued.
			 */
			FUNC12();
		} else {
			FUNC8(iop, gather, iova, size);
		}

		return size;
	} else if (FUNC11(pte, lvl, iop->fmt)) {
		/*
		 * Insert a table at the next level to map the old region,
		 * minus the part we want to unmap
		 */
		return FUNC7(data, gather, iova, size, pte,
						lvl + 1, ptep);
	}

	/* Keep on walkin' */
	ptep = FUNC10(pte, data);
	return FUNC13(data, gather, iova, size, lvl + 1, ptep);
}