#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_9__ {TYPE_1__* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct msm_iommu_dev {scalar_t__ irq; int ncb; void* pclk; void* clk; void* base; int /*<<< orphan*/  iommu; TYPE_2__* dev; int /*<<< orphan*/  dev_node; int /*<<< orphan*/  ctx_list; } ;
typedef  int /*<<< orphan*/  resource_size_t ;
struct TYPE_8__ {int /*<<< orphan*/  fwnode; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 scalar_t__ FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char*) ; 
 void* FUNC12 (TYPE_2__*,char*) ; 
 void* FUNC13 (TYPE_2__*,struct resource*) ; 
 struct msm_iommu_dev* FUNC14 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct msm_iommu_dev*) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  msm_iommu_fault_handler ; 
 int /*<<< orphan*/  msm_iommu_ops ; 
 int /*<<< orphan*/  FUNC21 (void*,int) ; 
 int FUNC22 (TYPE_1__*,char*,int*) ; 
 int /*<<< orphan*/  platform_bus_type ; 
 scalar_t__ FUNC23 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC24 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (char*,...) ; 
 int /*<<< orphan*/  FUNC26 (char*,void*,scalar_t__,int) ; 
 int /*<<< orphan*/  qcom_iommu_devices ; 

__attribute__((used)) static int FUNC27(struct platform_device *pdev)
{
	struct resource *r;
	resource_size_t ioaddr;
	struct msm_iommu_dev *iommu;
	int ret, par, val;

	iommu = FUNC14(&pdev->dev, sizeof(*iommu), GFP_KERNEL);
	if (!iommu)
		return -ENODEV;

	iommu->dev = &pdev->dev;
	FUNC1(&iommu->ctx_list);

	iommu->pclk = FUNC12(iommu->dev, "smmu_pclk");
	if (FUNC2(iommu->pclk)) {
		FUNC11(iommu->dev, "could not get smmu_pclk\n");
		return FUNC3(iommu->pclk);
	}

	ret = FUNC9(iommu->pclk);
	if (ret) {
		FUNC11(iommu->dev, "could not prepare smmu_pclk\n");
		return ret;
	}

	iommu->clk = FUNC12(iommu->dev, "iommu_clk");
	if (FUNC2(iommu->clk)) {
		FUNC11(iommu->dev, "could not get iommu_clk\n");
		FUNC10(iommu->pclk);
		return FUNC3(iommu->clk);
	}

	ret = FUNC9(iommu->clk);
	if (ret) {
		FUNC11(iommu->dev, "could not prepare iommu_clk\n");
		FUNC10(iommu->pclk);
		return ret;
	}

	r = FUNC24(pdev, IORESOURCE_MEM, 0);
	iommu->base = FUNC13(iommu->dev, r);
	if (FUNC2(iommu->base)) {
		FUNC11(iommu->dev, "could not get iommu base\n");
		ret = FUNC3(iommu->base);
		goto fail;
	}
	ioaddr = r->start;

	iommu->irq = FUNC23(pdev, 0);
	if (iommu->irq < 0) {
		ret = -ENODEV;
		goto fail;
	}

	ret = FUNC22(iommu->dev->of_node, "qcom,ncb", &val);
	if (ret) {
		FUNC11(iommu->dev, "could not get ncb\n");
		goto fail;
	}
	iommu->ncb = val;

	FUNC21(iommu->base, iommu->ncb);
	FUNC4(iommu->base, 0, 1);
	FUNC5(iommu->base, 0, 0);
	FUNC6(iommu->base, 0, 1);
	FUNC7(iommu->base, 0, 0);
	par = FUNC0(iommu->base, 0);
	FUNC6(iommu->base, 0, 0);
	FUNC4(iommu->base, 0, 0);

	if (!par) {
		FUNC25("Invalid PAR value detected\n");
		ret = -ENODEV;
		goto fail;
	}

	ret = FUNC15(iommu->dev, iommu->irq, NULL,
					msm_iommu_fault_handler,
					IRQF_ONESHOT | IRQF_SHARED,
					"msm_iommu_secure_irpt_handler",
					iommu);
	if (ret) {
		FUNC25("Request IRQ %d failed with ret=%d\n", iommu->irq, ret);
		goto fail;
	}

	FUNC20(&iommu->dev_node, &qcom_iommu_devices);

	ret = FUNC19(&iommu->iommu, iommu->dev, NULL,
				     "msm-smmu.%pa", &ioaddr);
	if (ret) {
		FUNC25("Could not add msm-smmu at %pa to sysfs\n", &ioaddr);
		goto fail;
	}

	FUNC18(&iommu->iommu, &msm_iommu_ops);
	FUNC17(&iommu->iommu, &pdev->dev.of_node->fwnode);

	ret = FUNC16(&iommu->iommu);
	if (ret) {
		FUNC25("Could not register msm-smmu at %pa\n", &ioaddr);
		goto fail;
	}

	FUNC8(&platform_bus_type, &msm_iommu_ops);

	FUNC26("device mapped at %p, irq %d with %d ctx banks\n",
		iommu->base, iommu->irq, iommu->ncb);

	return ret;
fail:
	FUNC10(iommu->clk);
	FUNC10(iommu->pclk);
	return ret;
}