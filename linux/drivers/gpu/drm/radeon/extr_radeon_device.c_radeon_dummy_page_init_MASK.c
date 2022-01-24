#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  entry; int /*<<< orphan*/ * page; } ;
struct radeon_device {TYPE_1__ dummy_page; TYPE_2__* pdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_DMA32 ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  RADEON_GART_PAGE_DUMMY ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct radeon_device *rdev)
{
	if (rdev->dummy_page.page)
		return 0;
	rdev->dummy_page.page = FUNC1(GFP_DMA32 | GFP_KERNEL | __GFP_ZERO);
	if (rdev->dummy_page.page == NULL)
		return -ENOMEM;
	rdev->dummy_page.addr = FUNC4(rdev->pdev, rdev->dummy_page.page,
					0, PAGE_SIZE, PCI_DMA_BIDIRECTIONAL);
	if (FUNC3(rdev->pdev, rdev->dummy_page.addr)) {
		FUNC2(&rdev->pdev->dev, "Failed to DMA MAP the dummy page\n");
		FUNC0(rdev->dummy_page.page);
		rdev->dummy_page.page = NULL;
		return -ENOMEM;
	}
	rdev->dummy_page.entry = FUNC5(rdev->dummy_page.addr,
							    RADEON_GART_PAGE_DUMMY);
	return 0;
}