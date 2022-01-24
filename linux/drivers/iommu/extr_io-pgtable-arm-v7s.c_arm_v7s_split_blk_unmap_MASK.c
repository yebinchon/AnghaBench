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
struct arm_v7s_io_pgtable {TYPE_1__ iop; } ;
typedef  scalar_t__ arm_v7s_iopte ;

/* Variables and functions */
 int FUNC0 (unsigned long,int) ; 
 size_t FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__* FUNC4 (int,int /*<<< orphan*/ ,struct arm_v7s_io_pgtable*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int,struct arm_v7s_io_pgtable*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,scalar_t__,int,struct io_pgtable_cfg*) ; 
 size_t FUNC7 (struct arm_v7s_io_pgtable*,struct iommu_iotlb_gather*,unsigned long,size_t,int,scalar_t__*) ; 
 scalar_t__ FUNC8 (scalar_t__*,scalar_t__*,scalar_t__,struct io_pgtable_cfg*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int,struct io_pgtable_cfg*) ; 
 scalar_t__ FUNC10 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,struct iommu_iotlb_gather*,unsigned long,size_t) ; 
 scalar_t__* FUNC13 (scalar_t__,int,struct arm_v7s_io_pgtable*) ; 

__attribute__((used)) static size_t FUNC14(struct arm_v7s_io_pgtable *data,
				      struct iommu_iotlb_gather *gather,
				      unsigned long iova, size_t size,
				      arm_v7s_iopte blk_pte,
				      arm_v7s_iopte *ptep)
{
	struct io_pgtable_cfg *cfg = &data->iop.cfg;
	arm_v7s_iopte pte, *tablep;
	int i, unmap_idx, num_entries, num_ptes;

	tablep = FUNC4(2, GFP_ATOMIC, data);
	if (!tablep)
		return 0; /* Bytes unmapped */

	num_ptes = FUNC2(2);
	num_entries = size >> FUNC1(2);
	unmap_idx = FUNC0(iova, 2);

	pte = FUNC9(FUNC11(blk_pte, 1), 2, cfg);
	if (num_entries > 1)
		pte = FUNC10(pte, 2);

	for (i = 0; i < num_ptes; i += num_entries, pte += size) {
		/* Unmap! */
		if (i == unmap_idx)
			continue;

		FUNC6(&tablep[i], pte, num_entries, cfg);
	}

	pte = FUNC8(tablep, ptep, blk_pte, cfg);
	if (pte != blk_pte) {
		FUNC5(tablep, 2, data);

		if (!FUNC3(pte, 1))
			return 0;

		tablep = FUNC13(pte, 1, data);
		return FUNC7(data, gather, iova, size, 2, tablep);
	}

	FUNC12(&data->iop, gather, iova, size);
	return size;
}