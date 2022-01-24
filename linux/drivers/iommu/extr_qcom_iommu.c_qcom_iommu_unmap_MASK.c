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
struct qcom_iommu_domain {TYPE_1__* iommu; int /*<<< orphan*/  pgtbl_lock; struct io_pgtable_ops* pgtbl_ops; } ;
struct iommu_iotlb_gather {int dummy; } ;
struct iommu_domain {int dummy; } ;
struct io_pgtable_ops {size_t (* unmap ) (struct io_pgtable_ops*,unsigned long,size_t,struct iommu_iotlb_gather*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 size_t FUNC4 (struct io_pgtable_ops*,unsigned long,size_t,struct iommu_iotlb_gather*) ; 
 struct qcom_iommu_domain* FUNC5 (struct iommu_domain*) ; 

__attribute__((used)) static size_t FUNC6(struct iommu_domain *domain, unsigned long iova,
			       size_t size, struct iommu_iotlb_gather *gather)
{
	size_t ret;
	unsigned long flags;
	struct qcom_iommu_domain *qcom_domain = FUNC5(domain);
	struct io_pgtable_ops *ops = qcom_domain->pgtbl_ops;

	if (!ops)
		return 0;

	/* NOTE: unmap can be called after client device is powered off,
	 * for example, with GPUs or anything involving dma-buf.  So we
	 * cannot rely on the device_link.  Make sure the IOMMU is on to
	 * avoid unclocked accesses in the TLB inv path:
	 */
	FUNC0(qcom_domain->iommu->dev);
	FUNC2(&qcom_domain->pgtbl_lock, flags);
	ret = ops->unmap(ops, iova, size, gather);
	FUNC3(&qcom_domain->pgtbl_lock, flags);
	FUNC1(qcom_domain->iommu->dev);

	return ret;
}