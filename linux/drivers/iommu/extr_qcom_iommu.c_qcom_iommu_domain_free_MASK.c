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
struct qcom_iommu_domain {TYPE_1__* iommu; int /*<<< orphan*/  pgtbl_ops; } ;
struct iommu_domain {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iommu_domain*) ; 
 int /*<<< orphan*/  FUNC3 (struct qcom_iommu_domain*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct qcom_iommu_domain* FUNC6 (struct iommu_domain*) ; 

__attribute__((used)) static void FUNC7(struct iommu_domain *domain)
{
	struct qcom_iommu_domain *qcom_domain = FUNC6(domain);

	if (FUNC0(qcom_domain->iommu))    /* forgot to detach? */
		return;

	FUNC2(domain);

	/* NOTE: unmap can be called after client device is powered off,
	 * for example, with GPUs or anything involving dma-buf.  So we
	 * cannot rely on the device_link.  Make sure the IOMMU is on to
	 * avoid unclocked accesses in the TLB inv path:
	 */
	FUNC4(qcom_domain->iommu->dev);

	FUNC1(qcom_domain->pgtbl_ops);

	FUNC5(qcom_domain->iommu->dev);

	FUNC3(qcom_domain);
}