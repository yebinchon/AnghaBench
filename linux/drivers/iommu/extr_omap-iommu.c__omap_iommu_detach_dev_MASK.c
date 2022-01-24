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
struct omap_iommu_domain {int num_iommus; struct device* dev; struct omap_iommu_device* iommus; } ;
struct omap_iommu_device {struct omap_iommu* iommu_dev; } ;
struct omap_iommu_arch_data {int dummy; } ;
struct omap_iommu {int /*<<< orphan*/ * domain; } ;
struct TYPE_2__ {struct omap_iommu_arch_data* iommu; } ;
struct device {TYPE_1__ archdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_iommu*) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_iommu*) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_iommu_domain*) ; 

__attribute__((used)) static void FUNC4(struct omap_iommu_domain *omap_domain,
				   struct device *dev)
{
	struct omap_iommu_arch_data *arch_data = dev->archdata.iommu;
	struct omap_iommu_device *iommu = omap_domain->iommus;
	struct omap_iommu *oiommu;
	int i;

	if (!omap_domain->dev) {
		FUNC0(dev, "domain has no attached device\n");
		return;
	}

	/* only a single device is supported per domain for now */
	if (omap_domain->dev != dev) {
		FUNC0(dev, "invalid attached device\n");
		return;
	}

	/*
	 * cleanup in the reverse order of attachment - this addresses
	 * any h/w dependencies between multiple instances, if any
	 */
	iommu += (omap_domain->num_iommus - 1);
	arch_data += (omap_domain->num_iommus - 1);
	for (i = 0; i < omap_domain->num_iommus; i++, iommu--, arch_data--) {
		oiommu = iommu->iommu_dev;
		FUNC1(oiommu);

		FUNC2(oiommu);
		iommu->iommu_dev = NULL;
		oiommu->domain = NULL;
	}

	FUNC3(omap_domain);

	omap_domain->dev = NULL;
}