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
struct iommu_domain {TYPE_1__* ops; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* attach_dev ) (struct iommu_domain*,struct device*) ;scalar_t__ (* is_attach_deferred ) (struct iommu_domain*,struct device*) ;} ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct iommu_domain*,struct device*) ; 
 int FUNC1 (struct iommu_domain*,struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct iommu_domain *domain,
				 struct device *dev)
{
	int ret;
	if ((domain->ops->is_attach_deferred != NULL) &&
	    domain->ops->is_attach_deferred(domain, dev))
		return 0;

	if (FUNC3(domain->ops->attach_dev == NULL))
		return -ENODEV;

	ret = domain->ops->attach_dev(domain, dev);
	if (!ret)
		FUNC2(dev);
	return ret;
}