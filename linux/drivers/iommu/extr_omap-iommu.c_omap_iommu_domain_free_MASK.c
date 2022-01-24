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
struct omap_iommu_domain {scalar_t__ dev; } ;
struct iommu_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct omap_iommu_domain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_iommu_domain*) ; 
 struct omap_iommu_domain* FUNC2 (struct iommu_domain*) ; 

__attribute__((used)) static void FUNC3(struct iommu_domain *domain)
{
	struct omap_iommu_domain *omap_domain = FUNC2(domain);

	/*
	 * An iommu device is still attached
	 * (currently, only one device can be attached) ?
	 */
	if (omap_domain->dev)
		FUNC0(omap_domain, omap_domain->dev);

	FUNC1(omap_domain);
}