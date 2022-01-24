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
struct seq_file {struct omap_iommu* private; } ;
struct omap_iommu {int /*<<< orphan*/  page_table_lock; } ;

/* Variables and functions */
 int IOPGD_SHIFT ; 
 int IOPGD_TABLE ; 
 int IOPTE_SHIFT ; 
 int PTRS_PER_IOPGD ; 
 int PTRS_PER_IOPTE ; 
 int* FUNC0 (struct omap_iommu*,int /*<<< orphan*/ ) ; 
 int* FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct seq_file *s)
{
	int i, j;
	u32 da;
	u32 *iopgd, *iopte;
	struct omap_iommu *obj = s->private;

	FUNC3(&obj->page_table_lock);

	iopgd = FUNC0(obj, 0);
	for (i = 0; i < PTRS_PER_IOPGD; i++, iopgd++) {
		if (!*iopgd)
			continue;

		if (!(*iopgd & IOPGD_TABLE)) {
			da = i << IOPGD_SHIFT;
			FUNC2(s, "1: 0x%08x 0x%08x\n", da, *iopgd);
			continue;
		}

		iopte = FUNC1(iopgd, 0);
		for (j = 0; j < PTRS_PER_IOPTE; j++, iopte++) {
			if (!*iopte)
				continue;

			da = (i << IOPGD_SHIFT) + (j << IOPTE_SHIFT);
			FUNC2(s, "2: 0x%08x 0x%08x\n", da, *iopte);
		}
	}

	FUNC4(&obj->page_table_lock);
}