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
typedef  unsigned int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {unsigned int* pages_entry; scalar_t__ ptr; struct page** pages; int /*<<< orphan*/  ready; } ;
struct radeon_device {TYPE_1__ gart; } ;
struct page {int dummy; } ;
typedef  unsigned int dma_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int PAGE_SIZE ; 
 unsigned int RADEON_GPU_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned int FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 

int FUNC5(struct radeon_device *rdev, unsigned offset,
		     int pages, struct page **pagelist, dma_addr_t *dma_addr,
		     uint32_t flags)
{
	unsigned t;
	unsigned p;
	uint64_t page_base, page_entry;
	int i, j;

	if (!rdev->gart.ready) {
		FUNC0(1, "trying to bind memory to uninitialized GART !\n");
		return -EINVAL;
	}
	t = offset / RADEON_GPU_PAGE_SIZE;
	p = t / (PAGE_SIZE / RADEON_GPU_PAGE_SIZE);

	for (i = 0; i < pages; i++, p++) {
		rdev->gart.pages[p] = pagelist[i];
		page_base = dma_addr[i];
		for (j = 0; j < (PAGE_SIZE / RADEON_GPU_PAGE_SIZE); j++, t++) {
			page_entry = FUNC2(page_base, flags);
			rdev->gart.pages_entry[t] = page_entry;
			if (rdev->gart.ptr) {
				FUNC3(rdev, t, page_entry);
			}
			page_base += RADEON_GPU_PAGE_SIZE;
		}
	}
	if (rdev->gart.ptr) {
		FUNC1();
		FUNC4(rdev);
	}
	return 0;
}