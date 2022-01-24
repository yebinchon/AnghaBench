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
typedef  unsigned long uint64_t ;
struct page {int dummy; } ;
struct nouveau_drm {int dummy; } ;
struct hmm_range {unsigned long end; unsigned long start; int* pfns; int* flags; unsigned long pfn_shift; } ;

/* Variables and functions */
 size_t HMM_PFN_DEVICE_PRIVATE ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct page* FUNC1 (struct hmm_range*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_drm*,struct page*) ; 
 unsigned long FUNC3 (struct page*) ; 

void
FUNC4(struct nouveau_drm *drm,
			 struct hmm_range *range)
{
	unsigned long i, npages;

	npages = (range->end - range->start) >> PAGE_SHIFT;
	for (i = 0; i < npages; ++i) {
		struct page *page;
		uint64_t addr;

		page = FUNC1(range, range->pfns[i]);
		if (page == NULL)
			continue;

		if (!(range->pfns[i] & range->flags[HMM_PFN_DEVICE_PRIVATE])) {
			continue;
		}

		if (!FUNC2(drm, page)) {
			FUNC0(1, "Some unknown device memory !\n");
			range->pfns[i] = 0;
			continue;
		}

		addr = FUNC3(page);
		range->pfns[i] &= ((1UL << range->pfn_shift) - 1);
		range->pfns[i] |= (addr >> PAGE_SHIFT) << range->pfn_shift;
	}
}