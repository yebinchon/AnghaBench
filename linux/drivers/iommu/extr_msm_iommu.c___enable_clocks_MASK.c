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
struct msm_iommu_dev {scalar_t__ pclk; scalar_t__ clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct msm_iommu_dev *iommu)
{
	int ret;

	ret = FUNC1(iommu->pclk);
	if (ret)
		goto fail;

	if (iommu->clk) {
		ret = FUNC1(iommu->clk);
		if (ret)
			FUNC0(iommu->pclk);
	}
fail:
	return ret;
}