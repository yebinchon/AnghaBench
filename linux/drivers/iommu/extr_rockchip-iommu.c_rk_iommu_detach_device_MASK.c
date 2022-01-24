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
struct rk_iommu_domain {int /*<<< orphan*/  iommus_lock; } ;
struct rk_iommu {int /*<<< orphan*/  dev; int /*<<< orphan*/  node; struct iommu_domain* domain; } ;
struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rk_iommu*) ; 
 struct rk_iommu* FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 struct rk_iommu_domain* FUNC9 (struct iommu_domain*) ; 

__attribute__((used)) static void FUNC10(struct iommu_domain *domain,
				   struct device *dev)
{
	struct rk_iommu *iommu;
	struct rk_iommu_domain *rk_domain = FUNC9(domain);
	unsigned long flags;
	int ret;

	/* Allow 'virtual devices' (eg drm) to detach from domain */
	iommu = FUNC6(dev);
	if (!iommu)
		return;

	FUNC1(dev, "Detaching from iommu domain\n");

	/* iommu already detached */
	if (iommu->domain != domain)
		return;

	iommu->domain = NULL;

	FUNC7(&rk_domain->iommus_lock, flags);
	FUNC2(&iommu->node);
	FUNC8(&rk_domain->iommus_lock, flags);

	ret = FUNC3(iommu->dev);
	FUNC0(ret < 0);
	if (ret > 0) {
		FUNC5(iommu);
		FUNC4(iommu->dev);
	}
}