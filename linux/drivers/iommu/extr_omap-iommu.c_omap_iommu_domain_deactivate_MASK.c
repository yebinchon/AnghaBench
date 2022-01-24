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
struct omap_iommu_domain {int num_iommus; struct omap_iommu_device* iommus; int /*<<< orphan*/  dev; } ;
struct omap_iommu_device {struct omap_iommu* iommu_dev; } ;
struct omap_iommu {int /*<<< orphan*/  dev; } ;
struct iommu_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct omap_iommu_domain* FUNC1 (struct iommu_domain*) ; 

int FUNC2(struct iommu_domain *domain)
{
	struct omap_iommu_domain *omap_domain = FUNC1(domain);
	struct omap_iommu_device *iommu;
	struct omap_iommu *oiommu;
	int i;

	if (!omap_domain->dev)
		return 0;

	iommu = omap_domain->iommus;
	iommu += (omap_domain->num_iommus - 1);
	for (i = 0; i < omap_domain->num_iommus; i++, iommu--) {
		oiommu = iommu->iommu_dev;
		FUNC0(oiommu->dev);
	}

	return 0;
}