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
typedef  int /*<<< orphan*/  u8 ;
struct pasid_table {int dummy; } ;
struct intel_iommu {int dummy; } ;
struct domain_context_mapping_data {struct pasid_table* table; struct intel_iommu* iommu; struct dmar_domain* domain; } ;
struct dmar_domain {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct intel_iommu* FUNC1 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  domain_context_mapping_cb ; 
 int FUNC2 (struct dmar_domain*,struct intel_iommu*,struct pasid_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pasid_table* FUNC3 (struct device*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct domain_context_mapping_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 

__attribute__((used)) static int
FUNC6(struct dmar_domain *domain, struct device *dev)
{
	struct domain_context_mapping_data data;
	struct pasid_table *table;
	struct intel_iommu *iommu;
	u8 bus, devfn;

	iommu = FUNC1(dev, &bus, &devfn);
	if (!iommu)
		return -ENODEV;

	table = FUNC3(dev);

	if (!FUNC0(dev))
		return FUNC2(domain, iommu, table,
						  bus, devfn);

	data.domain = domain;
	data.iommu = iommu;
	data.table = table;

	return FUNC4(FUNC5(dev),
				      &domain_context_mapping_cb, &data);
}