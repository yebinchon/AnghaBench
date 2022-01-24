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
struct iommu_group {int /*<<< orphan*/  mutex; struct iommu_domain* default_domain; } ;
struct iommu_domain {unsigned long type; } ;
struct device {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 unsigned long IOMMU_DOMAIN_DMA ; 
 int FUNC0 (struct iommu_domain*,struct iommu_group*) ; 
 struct iommu_domain* FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct iommu_domain*) ; 
 int /*<<< orphan*/  FUNC4 (struct iommu_group*,struct device*) ; 
 int FUNC5 (struct iommu_group*) ; 
 struct iommu_group* FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct iommu_group*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct device *dev, unsigned long type)
{
	struct iommu_domain *domain;
	struct iommu_group *group;
	int ret;

	/* Device must already be in a group before calling this function */
	group = FUNC6(dev);
	if (!group)
		return -EINVAL;

	FUNC8(&group->mutex);

	ret = 0;
	if (group->default_domain && group->default_domain->type == type)
		goto out;

	/* Don't change mappings of existing devices */
	ret = -EBUSY;
	if (FUNC5(group) != 1)
		goto out;

	ret = -ENOMEM;
	domain = FUNC1(dev->bus, type);
	if (!domain)
		goto out;

	/* Attach the device to the domain */
	ret = FUNC0(domain, group);
	if (ret) {
		FUNC3(domain);
		goto out;
	}

	FUNC4(group, dev);

	/* Make the domain the default for this group */
	if (group->default_domain)
		FUNC3(group->default_domain);
	group->default_domain = domain;

	FUNC2(dev, "Using iommu %s mapping\n",
		 type == IOMMU_DOMAIN_DMA ? "dma" : "direct");

	ret = 0;
out:
	FUNC9(&group->mutex);
	FUNC7(group);

	return ret;
}