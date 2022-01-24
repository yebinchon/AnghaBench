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
struct msm_iommu_dev {int ncb; scalar_t__ base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_iommu_dev*) ; 
 int FUNC3 (struct msm_iommu_dev*) ; 
 int /*<<< orphan*/  msm_iommu_lock ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct msm_iommu_dev *iommu = dev_id;
	unsigned int fsr;
	int i, ret;

	FUNC6(&msm_iommu_lock);

	if (!iommu) {
		FUNC4("Invalid device ID in context interrupt handler\n");
		goto fail;
	}

	FUNC4("Unexpected IOMMU page fault!\n");
	FUNC4("base = %08x\n", (unsigned int)iommu->base);

	ret = FUNC3(iommu);
	if (ret)
		goto fail;

	for (i = 0; i < iommu->ncb; i++) {
		fsr = FUNC0(iommu->base, i);
		if (fsr) {
			FUNC4("Fault occurred in context %d.\n", i);
			FUNC4("Interesting registers:\n");
			FUNC5(iommu->base, i);
			FUNC1(iommu->base, i, 0x4000000F);
		}
	}
	FUNC2(iommu);
fail:
	FUNC7(&msm_iommu_lock);
	return 0;
}