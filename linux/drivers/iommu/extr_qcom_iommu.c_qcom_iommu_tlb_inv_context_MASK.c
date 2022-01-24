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
struct qcom_iommu_ctx {int /*<<< orphan*/  asid; } ;
struct iommu_fwspec {unsigned int num_ids; int /*<<< orphan*/ * ids; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_SMMU_CB_S1_TLBIASID ; 
 int /*<<< orphan*/  FUNC0 (struct qcom_iommu_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 struct qcom_iommu_ctx* FUNC2 (struct iommu_fwspec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *cookie)
{
	struct iommu_fwspec *fwspec = cookie;
	unsigned i;

	for (i = 0; i < fwspec->num_ids; i++) {
		struct qcom_iommu_ctx *ctx = FUNC2(fwspec, fwspec->ids[i]);
		FUNC0(ctx, ARM_SMMU_CB_S1_TLBIASID, ctx->asid);
	}

	FUNC1(cookie);
}