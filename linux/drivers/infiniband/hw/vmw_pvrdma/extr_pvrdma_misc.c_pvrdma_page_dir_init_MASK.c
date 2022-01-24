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
typedef  scalar_t__ u64 ;
struct pvrdma_page_dir {scalar_t__ ntables; scalar_t__ npages; void** pages; void** tables; int /*<<< orphan*/ * dir; int /*<<< orphan*/  dir_dma; } ;
struct pvrdma_dev {TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ PVRDMA_PAGE_DIR_MAX_PAGES ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pvrdma_page_dir*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pvrdma_dev*,struct pvrdma_page_dir*) ; 
 int /*<<< orphan*/  FUNC5 (struct pvrdma_page_dir*,scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC6(struct pvrdma_dev *dev, struct pvrdma_page_dir *pdir,
			 u64 npages, bool alloc_pages)
{
	u64 i;

	if (npages > PVRDMA_PAGE_DIR_MAX_PAGES)
		return -EINVAL;

	FUNC3(pdir, 0, sizeof(*pdir));

	pdir->dir = FUNC1(&dev->pdev->dev, PAGE_SIZE,
				       &pdir->dir_dma, GFP_KERNEL);
	if (!pdir->dir)
		goto err;

	pdir->ntables = FUNC0(npages - 1) + 1;
	pdir->tables = FUNC2(pdir->ntables, sizeof(*pdir->tables),
			       GFP_KERNEL);
	if (!pdir->tables)
		goto err;

	for (i = 0; i < pdir->ntables; i++) {
		pdir->tables[i] = FUNC1(&dev->pdev->dev, PAGE_SIZE,
						(dma_addr_t *)&pdir->dir[i],
						GFP_KERNEL);
		if (!pdir->tables[i])
			goto err;
	}

	pdir->npages = npages;

	if (alloc_pages) {
		pdir->pages = FUNC2(npages, sizeof(*pdir->pages),
				      GFP_KERNEL);
		if (!pdir->pages)
			goto err;

		for (i = 0; i < pdir->npages; i++) {
			dma_addr_t page_dma;

			pdir->pages[i] = FUNC1(&dev->pdev->dev,
							    PAGE_SIZE,
							    &page_dma,
							    GFP_KERNEL);
			if (!pdir->pages[i])
				goto err;

			FUNC5(pdir, i, page_dma);
		}
	}

	return 0;

err:
	FUNC4(dev, pdir);

	return -ENOMEM;
}