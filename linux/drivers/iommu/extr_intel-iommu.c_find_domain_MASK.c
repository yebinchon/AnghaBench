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
struct iommu_domain {int dummy; } ;
struct dmar_domain {int dummy; } ;
struct device_domain_info {struct dmar_domain* domain; } ;
struct TYPE_2__ {struct device_domain_info* iommu; } ;
struct device {TYPE_1__ archdata; } ;

/* Variables and functions */
 struct device_domain_info* DEFER_DEVICE_DOMAIN_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct iommu_domain*,struct device*) ; 
 struct iommu_domain* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct device_domain_info*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static struct dmar_domain *FUNC4(struct device *dev)
{
	struct device_domain_info *info;

	if (FUNC3(dev->archdata.iommu == DEFER_DEVICE_DOMAIN_INFO)) {
		struct iommu_domain *domain;

		dev->archdata.iommu = NULL;
		domain = FUNC1(dev);
		if (domain)
			FUNC0(domain, dev);
	}

	/* No lock here, assumes no domain exit in normal case */
	info = dev->archdata.iommu;

	if (FUNC2(info))
		return info->domain;
	return NULL;
}