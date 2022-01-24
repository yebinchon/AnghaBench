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
struct iommu_ops {int dummy; } ;
struct iommu_fwspec {struct iommu_ops const* ops; struct fwnode_handle* iommu_fwnode; } ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct iommu_fwspec* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct iommu_fwspec*) ; 
 struct iommu_fwspec* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fwnode_handle*) ; 

int FUNC5(struct device *dev, struct fwnode_handle *iommu_fwnode,
		      const struct iommu_ops *ops)
{
	struct iommu_fwspec *fwspec = FUNC0(dev);

	if (fwspec)
		return ops == fwspec->ops ? 0 : -EINVAL;

	fwspec = FUNC2(sizeof(*fwspec), GFP_KERNEL);
	if (!fwspec)
		return -ENOMEM;

	FUNC3(FUNC4(iommu_fwnode));
	fwspec->iommu_fwnode = iommu_fwnode;
	fwspec->ops = ops;
	FUNC1(dev, fwspec);
	return 0;
}