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
struct iommu_iotlb_gather {int dummy; } ;
struct iommu_domain {int dummy; } ;
struct io_pgtable_ops {size_t (* unmap ) (struct io_pgtable_ops*,unsigned long,size_t,struct iommu_iotlb_gather*) ;} ;
struct arm_smmu_device {int dummy; } ;
struct TYPE_2__ {struct arm_smmu_device* smmu; struct io_pgtable_ops* pgtbl_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct arm_smmu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct arm_smmu_device*) ; 
 size_t FUNC2 (struct io_pgtable_ops*,unsigned long,size_t,struct iommu_iotlb_gather*) ; 
 TYPE_1__* FUNC3 (struct iommu_domain*) ; 

__attribute__((used)) static size_t FUNC4(struct iommu_domain *domain, unsigned long iova,
			     size_t size, struct iommu_iotlb_gather *gather)
{
	struct io_pgtable_ops *ops = FUNC3(domain)->pgtbl_ops;
	struct arm_smmu_device *smmu = FUNC3(domain)->smmu;
	size_t ret;

	if (!ops)
		return 0;

	FUNC0(smmu);
	ret = ops->unmap(ops, iova, size, gather);
	FUNC1(smmu);

	return ret;
}