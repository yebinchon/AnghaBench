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
struct qcom_iommu_dev {int /*<<< orphan*/ ** ctxs; } ;
struct qcom_iommu_ctx {int asid; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 struct qcom_iommu_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 struct qcom_iommu_ctx* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct qcom_iommu_dev *qcom_iommu = FUNC0(pdev->dev.parent);
	struct qcom_iommu_ctx *ctx = FUNC1(pdev);

	FUNC2(pdev, NULL);

	qcom_iommu->ctxs[ctx->asid - 1] = NULL;

	return 0;
}