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
typedef  int /*<<< orphan*/  u32 ;
struct dfl_feature_platform_data {int /*<<< orphan*/  lock; } ;
struct dfl_afu_mmio_region {int dummy; } ;
struct dfl_afu {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct dfl_afu* FUNC0 (struct dfl_feature_platform_data*) ; 
 struct dfl_afu_mmio_region* FUNC1 (struct dfl_afu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct dfl_feature_platform_data *pdata,
				 u32 region_index,
				 struct dfl_afu_mmio_region *pregion)
{
	struct dfl_afu_mmio_region *region;
	struct dfl_afu *afu;
	int ret = 0;

	FUNC2(&pdata->lock);
	afu = FUNC0(pdata);
	region = FUNC1(afu, region_index);
	if (!region) {
		ret = -EINVAL;
		goto exit;
	}
	*pregion = *region;
exit:
	FUNC3(&pdata->lock);
	return ret;
}