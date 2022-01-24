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
struct iommu_ops {struct iommu_group* (* device_group ) (struct device*) ;} ;
struct iommu_group {struct iommu_domain* domain; struct iommu_domain* default_domain; } ;
struct iommu_domain {int dummy; } ;
struct device {TYPE_1__* bus; } ;
struct TYPE_2__ {struct iommu_ops* iommu_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOMAIN_ATTR_DMA_USE_FLUSH_QUEUE ; 
 int EINVAL ; 
 struct iommu_group* FUNC0 (int) ; 
 scalar_t__ IOMMU_DOMAIN_DMA ; 
 scalar_t__ FUNC1 (struct iommu_group*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct iommu_domain* FUNC3 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,scalar_t__) ; 
 scalar_t__ iommu_def_domain_type ; 
 int /*<<< orphan*/  iommu_dma_strict ; 
 int /*<<< orphan*/  FUNC5 (struct iommu_domain*,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (struct iommu_group*,struct device*) ; 
 struct iommu_group* FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct iommu_group*) ; 
 struct iommu_group* FUNC9 (struct device*) ; 

struct iommu_group *FUNC10(struct device *dev)
{
	const struct iommu_ops *ops = dev->bus->iommu_ops;
	struct iommu_group *group;
	int ret;

	group = FUNC7(dev);
	if (group)
		return group;

	if (!ops)
		return FUNC0(-EINVAL);

	group = ops->device_group(dev);
	if (FUNC2(group == NULL))
		return FUNC0(-EINVAL);

	if (FUNC1(group))
		return group;

	/*
	 * Try to allocate a default domain - needs support from the
	 * IOMMU driver.
	 */
	if (!group->default_domain) {
		struct iommu_domain *dom;

		dom = FUNC3(dev->bus, iommu_def_domain_type);
		if (!dom && iommu_def_domain_type != IOMMU_DOMAIN_DMA) {
			dom = FUNC3(dev->bus, IOMMU_DOMAIN_DMA);
			if (dom) {
				FUNC4(dev,
					 "failed to allocate default IOMMU domain of type %u; falling back to IOMMU_DOMAIN_DMA",
					 iommu_def_domain_type);
			}
		}

		group->default_domain = dom;
		if (!group->domain)
			group->domain = dom;

		if (dom && !iommu_dma_strict) {
			int attr = 1;
			FUNC5(dom,
					      DOMAIN_ATTR_DMA_USE_FLUSH_QUEUE,
					      &attr);
		}
	}

	ret = FUNC6(group, dev);
	if (ret) {
		FUNC8(group);
		return FUNC0(ret);
	}

	return group;
}