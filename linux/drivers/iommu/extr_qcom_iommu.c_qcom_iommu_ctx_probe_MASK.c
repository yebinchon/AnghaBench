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
struct resource {int dummy; } ;
struct qcom_iommu_dev {struct qcom_iommu_ctx** ctxs; } ;
struct qcom_iommu_ctx {int asid; int /*<<< orphan*/  base; struct device* dev; } ;
struct device {int /*<<< orphan*/  of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_SMMU_CB_FSR ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 struct qcom_iommu_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct resource*) ; 
 struct qcom_iommu_ctx* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct qcom_iommu_ctx*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct qcom_iommu_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct qcom_iommu_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct qcom_iommu_ctx*) ; 
 int /*<<< orphan*/  qcom_iommu_fault ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct qcom_iommu_ctx *ctx;
	struct device *dev = &pdev->dev;
	struct qcom_iommu_dev *qcom_iommu = FUNC4(dev->parent);
	struct resource *res;
	int ret, irq;

	ctx = FUNC6(dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	ctx->dev = dev;
	FUNC13(pdev, ctx);

	res = FUNC12(pdev, IORESOURCE_MEM, 0);
	ctx->base = FUNC5(dev, res);
	if (FUNC0(ctx->base))
		return FUNC1(ctx->base);

	irq = FUNC11(pdev, 0);
	if (irq < 0)
		return -ENODEV;

	/* clear IRQs before registering fault handler, just in case the
	 * boot-loader left us a surprise:
	 */
	FUNC10(ctx, ARM_SMMU_CB_FSR, FUNC9(ctx, ARM_SMMU_CB_FSR));

	ret = FUNC7(dev, irq,
			       qcom_iommu_fault,
			       IRQF_SHARED,
			       "qcom-iommu-fault",
			       ctx);
	if (ret) {
		FUNC3(dev, "failed to request IRQ %u\n", irq);
		return ret;
	}

	ret = FUNC8(dev->of_node);
	if (ret < 0) {
		FUNC3(dev, "missing reg property\n");
		return ret;
	}

	ctx->asid = ret;

	FUNC2(dev, "found asid %u\n", ctx->asid);

	qcom_iommu->ctxs[ctx->asid - 1] = ctx;

	return 0;
}