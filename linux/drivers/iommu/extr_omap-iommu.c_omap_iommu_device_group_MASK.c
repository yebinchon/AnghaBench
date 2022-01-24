#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct omap_iommu_arch_data {TYPE_2__* iommu_dev; } ;
struct iommu_group {int dummy; } ;
struct TYPE_3__ {struct omap_iommu_arch_data* iommu; } ;
struct device {TYPE_1__ archdata; } ;
struct TYPE_4__ {int /*<<< orphan*/  group; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct iommu_group* FUNC0 (int /*<<< orphan*/ ) ; 
 struct iommu_group* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct iommu_group *FUNC2(struct device *dev)
{
	struct omap_iommu_arch_data *arch_data = dev->archdata.iommu;
	struct iommu_group *group = FUNC0(-EINVAL);

	if (arch_data->iommu_dev)
		group = FUNC1(arch_data->iommu_dev->group);

	return group;
}