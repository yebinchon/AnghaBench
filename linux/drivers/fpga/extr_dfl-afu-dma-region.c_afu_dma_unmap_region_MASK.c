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
typedef  int /*<<< orphan*/  u64 ;
struct dfl_feature_platform_data {int /*<<< orphan*/  lock; } ;
struct dfl_afu_dma_region {int /*<<< orphan*/  length; int /*<<< orphan*/  iova; scalar_t__ in_use; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int EBUSY ; 
 int EINVAL ; 
 struct dfl_afu_dma_region* FUNC0 (struct dfl_feature_platform_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dfl_feature_platform_data*,struct dfl_afu_dma_region*) ; 
 int /*<<< orphan*/  FUNC2 (struct dfl_feature_platform_data*,struct dfl_afu_dma_region*) ; 
 int /*<<< orphan*/  FUNC3 (struct dfl_feature_platform_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dfl_afu_dma_region*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct dfl_feature_platform_data *pdata, u64 iova)
{
	struct dfl_afu_dma_region *region;

	FUNC6(&pdata->lock);
	region = FUNC0(pdata, iova);
	if (!region) {
		FUNC7(&pdata->lock);
		return -EINVAL;
	}

	if (region->in_use) {
		FUNC7(&pdata->lock);
		return -EBUSY;
	}

	FUNC1(pdata, region);
	FUNC7(&pdata->lock);

	FUNC4(FUNC3(pdata),
		       region->iova, region->length, DMA_BIDIRECTIONAL);
	FUNC2(pdata, region);
	FUNC5(region);

	return 0;
}