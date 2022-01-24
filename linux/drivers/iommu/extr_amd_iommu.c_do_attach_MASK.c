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
typedef  size_t u16 ;
struct protection_domain {int* dev_iommu; int dev_cnt; int /*<<< orphan*/  dev_list; } ;
struct TYPE_2__ {int enabled; } ;
struct iommu_dev_data {size_t devid; size_t alias; int /*<<< orphan*/  iommu_v2; int /*<<< orphan*/  list; struct protection_domain* domain; TYPE_1__ ats; } ;
struct amd_iommu {size_t index; } ;

/* Variables and functions */
 struct amd_iommu** amd_iommu_rlookup_table ; 
 int /*<<< orphan*/  FUNC0 (struct iommu_dev_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (size_t,struct protection_domain*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct iommu_dev_data *dev_data,
		      struct protection_domain *domain)
{
	struct amd_iommu *iommu;
	u16 alias;
	bool ats;

	iommu = amd_iommu_rlookup_table[dev_data->devid];
	alias = dev_data->alias;
	ats   = dev_data->ats.enabled;

	/* Update data structures */
	dev_data->domain = domain;
	FUNC1(&dev_data->list, &domain->dev_list);

	/* Do reference counting */
	domain->dev_iommu[iommu->index] += 1;
	domain->dev_cnt                 += 1;

	/* Update device table */
	FUNC2(dev_data->devid, domain, ats, dev_data->iommu_v2);
	if (alias != dev_data->devid)
		FUNC2(alias, domain, ats, dev_data->iommu_v2);

	FUNC0(dev_data);
}