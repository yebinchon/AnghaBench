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
struct iommu_fwspec {struct mtk_iommu_data* iommu_priv; int /*<<< orphan*/ * ops; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct iommu_fwspec* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  mtk_iommu_ops ; 

__attribute__((used)) static void FUNC4(struct device *dev)
{
	struct iommu_fwspec *fwspec = FUNC0(dev);
	struct mtk_iommu_data *data;

	if (!fwspec || fwspec->ops != &mtk_iommu_ops)
		return;

	data = fwspec->iommu_priv;
	FUNC1(&data->iommu, dev);

	FUNC3(dev);
	FUNC2(dev);
}