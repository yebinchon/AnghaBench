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
struct omap_iommu {int /*<<< orphan*/  page_table_lock; int /*<<< orphan*/  pd_dma; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  da ;

/* Variables and functions */
 int IOPGD_SHIFT ; 
 int PTRS_PER_IOPGD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_iommu*) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int* FUNC4 (struct omap_iommu*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_iommu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct omap_iommu *obj)
{
	unsigned long offset;
	int i;

	FUNC7(&obj->page_table_lock);

	for (i = 0; i < PTRS_PER_IOPGD; i++) {
		u32 da;
		u32 *iopgd;

		da = i << IOPGD_SHIFT;
		iopgd = FUNC4(obj, da);
		offset = FUNC2(da) * sizeof(da);

		if (!*iopgd)
			continue;

		if (FUNC3(*iopgd))
			FUNC5(obj, FUNC6(iopgd, 0), true);

		*iopgd = 0;
		FUNC0(obj->dev, obj->pd_dma, offset, 1);
	}

	FUNC1(obj);

	FUNC8(&obj->page_table_lock);
}