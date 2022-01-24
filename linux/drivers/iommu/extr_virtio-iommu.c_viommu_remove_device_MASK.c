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
struct viommu_endpoint {int /*<<< orphan*/  resv_regions; TYPE_1__* viommu; } ;
struct iommu_fwspec {struct viommu_endpoint* iommu_priv; int /*<<< orphan*/ * ops; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  iommu; } ;

/* Variables and functions */
 struct iommu_fwspec* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct viommu_endpoint*) ; 
 int /*<<< orphan*/  viommu_ops ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct device *dev)
{
	struct viommu_endpoint *vdev;
	struct iommu_fwspec *fwspec = FUNC0(dev);

	if (!fwspec || fwspec->ops != &viommu_ops)
		return;

	vdev = fwspec->iommu_priv;

	FUNC2(dev);
	FUNC1(&vdev->viommu->iommu, dev);
	FUNC4(dev, &vdev->resv_regions);
	FUNC3(vdev);
}