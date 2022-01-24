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
struct qcom_iommu_domain {int /*<<< orphan*/ * iommu; } ;
struct qcom_iommu_dev {int /*<<< orphan*/  dev; } ;
struct qcom_iommu_ctx {int /*<<< orphan*/ * domain; } ;
struct iommu_fwspec {unsigned int num_ids; int /*<<< orphan*/ * ids; } ;
struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_SMMU_CB_SCTLR ; 
 struct iommu_fwspec* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct qcom_iommu_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct qcom_iommu_ctx* FUNC4 (struct iommu_fwspec*,int /*<<< orphan*/ ) ; 
 struct qcom_iommu_dev* FUNC5 (struct iommu_fwspec*) ; 
 struct qcom_iommu_domain* FUNC6 (struct iommu_domain*) ; 

__attribute__((used)) static void FUNC7(struct iommu_domain *domain, struct device *dev)
{
	struct iommu_fwspec *fwspec = FUNC0(dev);
	struct qcom_iommu_dev *qcom_iommu = FUNC5(fwspec);
	struct qcom_iommu_domain *qcom_domain = FUNC6(domain);
	unsigned i;

	if (!qcom_domain->iommu)
		return;

	FUNC2(qcom_iommu->dev);
	for (i = 0; i < fwspec->num_ids; i++) {
		struct qcom_iommu_ctx *ctx = FUNC4(fwspec, fwspec->ids[i]);

		/* Disable the context bank: */
		FUNC1(ctx, ARM_SMMU_CB_SCTLR, 0);

		ctx->domain = NULL;
	}
	FUNC3(qcom_iommu->dev);

	qcom_domain->iommu = NULL;
}