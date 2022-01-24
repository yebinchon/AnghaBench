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
struct iommu_iotlb_gather {int dummy; } ;
struct iommu_domain {int dummy; } ;
struct io_pgtable_ops {size_t (* unmap ) (struct io_pgtable_ops*,unsigned long,size_t,struct iommu_iotlb_gather*) ;} ;
struct arm_smmu_domain {struct io_pgtable_ops* pgtbl_ops; } ;

/* Variables and functions */
 size_t FUNC0 (struct io_pgtable_ops*,unsigned long,size_t,struct iommu_iotlb_gather*) ; 
 struct arm_smmu_domain* FUNC1 (struct iommu_domain*) ; 

__attribute__((used)) static size_t FUNC2(struct iommu_domain *domain, unsigned long iova,
			     size_t size, struct iommu_iotlb_gather *gather)
{
	struct arm_smmu_domain *smmu_domain = FUNC1(domain);
	struct io_pgtable_ops *ops = smmu_domain->pgtbl_ops;

	if (!ops)
		return 0;

	return ops->unmap(ops, iova, size, gather);
}