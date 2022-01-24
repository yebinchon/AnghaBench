#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint64_t ;
struct vm_area_struct {unsigned long vm_end; scalar_t__ vm_file; } ;
struct ttm_tt {unsigned int num_pages; struct page** pages; TYPE_2__* sg; int /*<<< orphan*/  bdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  dma_address; } ;
struct radeon_ttm_tt {int userflags; scalar_t__ usermm; unsigned int userptr; TYPE_1__ ttm; } ;
struct radeon_device {int /*<<< orphan*/  dev; } ;
struct page {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_8__ {scalar_t__ mm; } ;
struct TYPE_7__ {unsigned int nents; int /*<<< orphan*/  sgl; } ;

/* Variables and functions */
 int DMA_BIDIRECTIONAL ; 
 int DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  FOLL_WRITE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SHIFT ; 
 unsigned int PAGE_SIZE ; 
 int RADEON_GEM_USERPTR_ANONONLY ; 
 int RADEON_GEM_USERPTR_READONLY ; 
 TYPE_5__* current ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct page**,int /*<<< orphan*/ ,int) ; 
 struct vm_area_struct* FUNC2 (scalar_t__,unsigned int) ; 
 int FUNC3 (unsigned int,unsigned int,int /*<<< orphan*/ ,struct page**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 struct radeon_device* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page**,unsigned int) ; 
 int FUNC7 (TYPE_2__*,struct page**,unsigned int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct ttm_tt *ttm)
{
	struct radeon_device *rdev = FUNC5(ttm->bdev);
	struct radeon_ttm_tt *gtt = (void *)ttm;
	unsigned pinned = 0, nents;
	int r;

	int write = !(gtt->userflags & RADEON_GEM_USERPTR_READONLY);
	enum dma_data_direction direction = write ?
		DMA_BIDIRECTIONAL : DMA_TO_DEVICE;

	if (current->mm != gtt->usermm)
		return -EPERM;

	if (gtt->userflags & RADEON_GEM_USERPTR_ANONONLY) {
		/* check that we only pin down anonymous memory
		   to prevent problems with writeback */
		unsigned long end = gtt->userptr + ttm->num_pages * PAGE_SIZE;
		struct vm_area_struct *vma;
		vma = FUNC2(gtt->usermm, gtt->userptr);
		if (!vma || vma->vm_file || vma->vm_end < end)
			return -EPERM;
	}

	do {
		unsigned num_pages = ttm->num_pages - pinned;
		uint64_t userptr = gtt->userptr + pinned * PAGE_SIZE;
		struct page **pages = ttm->pages + pinned;

		r = FUNC3(userptr, num_pages, write ? FOLL_WRITE : 0,
				   pages, NULL);
		if (r < 0)
			goto release_pages;

		pinned += r;

	} while (pinned < ttm->num_pages);

	r = FUNC7(ttm->sg, ttm->pages, ttm->num_pages, 0,
				      ttm->num_pages << PAGE_SHIFT,
				      GFP_KERNEL);
	if (r)
		goto release_sg;

	r = -ENOMEM;
	nents = FUNC0(rdev->dev, ttm->sg->sgl, ttm->sg->nents, direction);
	if (nents != ttm->sg->nents)
		goto release_sg;

	FUNC1(ttm->sg, ttm->pages,
					 gtt->ttm.dma_address, ttm->num_pages);

	return 0;

release_sg:
	FUNC4(ttm->sg);

release_pages:
	FUNC6(ttm->pages, pinned);
	return r;
}