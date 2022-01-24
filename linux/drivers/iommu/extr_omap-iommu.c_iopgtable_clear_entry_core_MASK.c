#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct omap_iommu {int /*<<< orphan*/  pd_dma; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int /*<<< orphan*/  da ;

/* Variables and functions */
 int IOLARGE_MASK ; 
 size_t IOPGD_SIZE ; 
 int IOPGD_SUPER ; 
 int IOPTE_LARGE ; 
 size_t IOPTE_SIZE ; 
 int IOSUPER_MASK ; 
 int PTRS_PER_IOPTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int* FUNC3 (struct omap_iommu*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_iommu*,int*,int) ; 
 int FUNC6 (int) ; 
 int* FUNC7 (int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static size_t FUNC9(struct omap_iommu *obj, u32 da)
{
	size_t bytes;
	u32 *iopgd = FUNC3(obj, da);
	int nent = 1;
	dma_addr_t pt_dma;
	unsigned long pd_offset = FUNC1(da) * sizeof(da);
	unsigned long pt_offset = FUNC6(da) * sizeof(da);

	if (!*iopgd)
		return 0;

	if (FUNC2(*iopgd)) {
		int i;
		u32 *iopte = FUNC7(iopgd, da);

		bytes = IOPTE_SIZE;
		if (*iopte & IOPTE_LARGE) {
			nent *= 16;
			/* rewind to the 1st entry */
			iopte = FUNC7(iopgd, (da & IOLARGE_MASK));
		}
		bytes *= nent;
		FUNC8(iopte, 0, nent * sizeof(*iopte));
		pt_dma = FUNC4(iopgd);
		FUNC0(obj->dev, pt_dma, pt_offset, nent);

		/*
		 * do table walk to check if this table is necessary or not
		 */
		iopte = FUNC7(iopgd, 0);
		for (i = 0; i < PTRS_PER_IOPTE; i++)
			if (iopte[i])
				goto out;

		FUNC5(obj, iopte, true);
		nent = 1; /* for the next L1 entry */
	} else {
		bytes = IOPGD_SIZE;
		if ((*iopgd & IOPGD_SUPER) == IOPGD_SUPER) {
			nent *= 16;
			/* rewind to the 1st entry */
			iopgd = FUNC3(obj, (da & IOSUPER_MASK));
		}
		bytes *= nent;
	}
	FUNC8(iopgd, 0, nent * sizeof(*iopgd));
	FUNC0(obj->dev, obj->pd_dma, pd_offset, nent);
out:
	return bytes;
}