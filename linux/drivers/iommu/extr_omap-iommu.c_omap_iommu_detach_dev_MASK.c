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
struct omap_iommu_domain {int /*<<< orphan*/  lock; } ;
struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct omap_iommu_domain*,struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct omap_iommu_domain* FUNC3 (struct iommu_domain*) ; 

__attribute__((used)) static void FUNC4(struct iommu_domain *domain,
				  struct device *dev)
{
	struct omap_iommu_domain *omap_domain = FUNC3(domain);

	FUNC1(&omap_domain->lock);
	FUNC0(omap_domain, dev);
	FUNC2(&omap_domain->lock);
}