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
struct mtk_iommu_data {int /*<<< orphan*/  iommu; } ;
struct iommu_group {int dummy; } ;
struct iommu_fwspec {struct mtk_iommu_data* iommu_priv; int /*<<< orphan*/ * ops; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct iommu_group*) ; 
 int FUNC1 (struct iommu_group*) ; 
 struct iommu_fwspec* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct device*) ; 
 struct iommu_group* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct iommu_group*) ; 
 int /*<<< orphan*/  mtk_iommu_ops ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct iommu_fwspec *fwspec = FUNC2(dev);
	struct mtk_iommu_data *data;
	struct iommu_group *group;

	if (!fwspec || fwspec->ops != &mtk_iommu_ops)
		return -ENODEV; /* Not a iommu client device */

	data = fwspec->iommu_priv;
	FUNC3(&data->iommu, dev);

	group = FUNC4(dev);
	if (FUNC0(group))
		return FUNC1(group);

	FUNC5(group);
	return 0;
}