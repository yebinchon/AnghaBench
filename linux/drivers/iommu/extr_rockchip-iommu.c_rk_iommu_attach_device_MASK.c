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
struct rk_iommu_domain {int /*<<< orphan*/  iommus_lock; int /*<<< orphan*/  iommus; } ;
struct rk_iommu {int /*<<< orphan*/  dev; struct iommu_domain* domain; int /*<<< orphan*/  node; } ;
struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iommu_domain*,struct device*) ; 
 int FUNC6 (struct rk_iommu*) ; 
 struct rk_iommu* FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 struct rk_iommu_domain* FUNC10 (struct iommu_domain*) ; 

__attribute__((used)) static int FUNC11(struct iommu_domain *domain,
		struct device *dev)
{
	struct rk_iommu *iommu;
	struct rk_iommu_domain *rk_domain = FUNC10(domain);
	unsigned long flags;
	int ret;

	/*
	 * Allow 'virtual devices' (e.g., drm) to attach to domain.
	 * Such a device does not belong to an iommu group.
	 */
	iommu = FUNC7(dev);
	if (!iommu)
		return 0;

	FUNC1(dev, "Attaching to iommu domain\n");

	/* iommu already attached */
	if (iommu->domain == domain)
		return 0;

	if (iommu->domain)
		FUNC5(iommu->domain, dev);

	iommu->domain = domain;

	FUNC8(&rk_domain->iommus_lock, flags);
	FUNC2(&iommu->node, &rk_domain->iommus);
	FUNC9(&rk_domain->iommus_lock, flags);

	ret = FUNC3(iommu->dev);
	if (!ret || FUNC0(ret < 0))
		return 0;

	ret = FUNC6(iommu);
	if (ret)
		FUNC5(iommu->domain, dev);

	FUNC4(iommu->dev);

	return ret;
}