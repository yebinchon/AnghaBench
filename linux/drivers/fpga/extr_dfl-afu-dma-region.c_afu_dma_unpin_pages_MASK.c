#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dfl_feature_platform_data {TYPE_1__* dev; } ;
struct dfl_afu_dma_region {long length; int /*<<< orphan*/  pages; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  mm; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,long,int) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,long) ; 

__attribute__((used)) static void FUNC4(struct dfl_feature_platform_data *pdata,
				struct dfl_afu_dma_region *region)
{
	long npages = region->length >> PAGE_SHIFT;
	struct device *dev = &pdata->dev->dev;

	FUNC3(region->pages, npages);
	FUNC2(region->pages);
	FUNC0(current->mm, npages, false);

	FUNC1(dev, "%ld pages unpinned\n", npages);
}