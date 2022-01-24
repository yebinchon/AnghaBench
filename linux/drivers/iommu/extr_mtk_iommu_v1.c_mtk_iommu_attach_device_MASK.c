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
struct mtk_iommu_domain {int dummy; } ;
struct mtk_iommu_data {struct mtk_iommu_domain* m4u_dom; } ;
struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct mtk_iommu_data* iommu_priv; } ;

/* Variables and functions */
 int ENODEV ; 
 TYPE_1__* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_iommu_data*,struct device*,int) ; 
 int FUNC2 (struct mtk_iommu_data*) ; 
 struct mtk_iommu_domain* FUNC3 (struct iommu_domain*) ; 

__attribute__((used)) static int FUNC4(struct iommu_domain *domain,
				   struct device *dev)
{
	struct mtk_iommu_domain *dom = FUNC3(domain);
	struct mtk_iommu_data *data = FUNC0(dev)->iommu_priv;
	int ret;

	if (!data)
		return -ENODEV;

	if (!data->m4u_dom) {
		data->m4u_dom = dom;
		ret = FUNC2(data);
		if (ret) {
			data->m4u_dom = NULL;
			return ret;
		}
	}

	FUNC1(data, dev, true);
	return 0;
}