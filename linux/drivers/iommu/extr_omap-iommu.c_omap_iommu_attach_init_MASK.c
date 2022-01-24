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
struct omap_iommu_domain {int num_iommus; struct omap_iommu_device* iommus; } ;
struct omap_iommu_device {scalar_t__ pgtable; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IOPGD_TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 struct omap_iommu_device* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct device *dev,
				  struct omap_iommu_domain *odomain)
{
	struct omap_iommu_device *iommu;
	int i;

	odomain->num_iommus = FUNC4(dev);
	if (!odomain->num_iommus)
		return -EINVAL;

	odomain->iommus = FUNC2(odomain->num_iommus, sizeof(*iommu),
				  GFP_ATOMIC);
	if (!odomain->iommus)
		return -ENOMEM;

	iommu = odomain->iommus;
	for (i = 0; i < odomain->num_iommus; i++, iommu++) {
		iommu->pgtable = FUNC3(IOPGD_TABLE_SIZE, GFP_ATOMIC);
		if (!iommu->pgtable)
			return -ENOMEM;

		/*
		 * should never fail, but please keep this around to ensure
		 * we keep the hardware happy
		 */
		if (FUNC1(!FUNC0((long)iommu->pgtable,
					IOPGD_TABLE_SIZE)))
			return -EINVAL;
	}

	return 0;
}