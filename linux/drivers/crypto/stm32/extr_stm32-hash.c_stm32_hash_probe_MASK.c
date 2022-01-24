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
struct stm32_hash_dev {int /*<<< orphan*/  clk; scalar_t__ dma_lch; int /*<<< orphan*/  list; int /*<<< orphan*/  engine; int /*<<< orphan*/  dma_mode; struct device* dev; int /*<<< orphan*/  rst; int /*<<< orphan*/  phys_base; int /*<<< orphan*/  io_base; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HASH_AUTOSUSPEND_DELAY ; 
 int /*<<< orphan*/  HASH_HWCFGR ; 
 int /*<<< orphan*/  HASH_VER ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,struct resource*) ; 
 struct stm32_hash_dev* FUNC13 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct stm32_hash_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct stm32_hash_dev*) ; 
 int /*<<< orphan*/  FUNC22 (struct device*) ; 
 int /*<<< orphan*/  FUNC23 (struct device*) ; 
 int /*<<< orphan*/  FUNC24 (struct device*) ; 
 int /*<<< orphan*/  FUNC25 (struct device*) ; 
 int /*<<< orphan*/  FUNC26 (struct device*) ; 
 int /*<<< orphan*/  FUNC27 (struct device*) ; 
 int /*<<< orphan*/  FUNC28 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct device*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 TYPE_1__ stm32_hash ; 
 int FUNC34 (struct stm32_hash_dev*) ; 
 int FUNC35 (struct stm32_hash_dev*,struct device*) ; 
 int /*<<< orphan*/  stm32_hash_irq_handler ; 
 int /*<<< orphan*/  stm32_hash_irq_thread ; 
 int /*<<< orphan*/  FUNC36 (struct stm32_hash_dev*,int /*<<< orphan*/ ) ; 
 int FUNC37 (struct stm32_hash_dev*) ; 
 int /*<<< orphan*/  FUNC38 (int) ; 

__attribute__((used)) static int FUNC39(struct platform_device *pdev)
{
	struct stm32_hash_dev *hdev;
	struct device *dev = &pdev->dev;
	struct resource *res;
	int ret, irq;

	hdev = FUNC13(dev, sizeof(*hdev), GFP_KERNEL);
	if (!hdev)
		return -ENOMEM;

	res = FUNC20(pdev, IORESOURCE_MEM, 0);
	hdev->io_base = FUNC12(dev, res);
	if (FUNC0(hdev->io_base))
		return FUNC1(hdev->io_base);

	hdev->phys_base = res->start;

	ret = FUNC35(hdev, dev);
	if (ret)
		return ret;

	irq = FUNC19(pdev, 0);
	if (irq < 0)
		return irq;

	ret = FUNC14(dev, irq, stm32_hash_irq_handler,
					stm32_hash_irq_thread, IRQF_ONESHOT,
					FUNC10(dev), hdev);
	if (ret) {
		FUNC8(dev, "Cannot grab IRQ\n");
		return ret;
	}

	hdev->clk = FUNC11(&pdev->dev, NULL);
	if (FUNC0(hdev->clk)) {
		FUNC8(dev, "failed to get clock for hash (%lu)\n",
			FUNC1(hdev->clk));
		return FUNC1(hdev->clk);
	}

	ret = FUNC3(hdev->clk);
	if (ret) {
		FUNC8(dev, "failed to enable hash clock (%d)\n", ret);
		return ret;
	}

	FUNC28(dev, HASH_AUTOSUSPEND_DELAY);
	FUNC29(dev);

	FUNC24(dev);
	FUNC27(dev);
	FUNC23(dev);

	hdev->rst = FUNC15(&pdev->dev, NULL);
	if (!FUNC0(hdev->rst)) {
		FUNC30(hdev->rst);
		FUNC38(2);
		FUNC31(hdev->rst);
	}

	hdev->dev = dev;

	FUNC21(pdev, hdev);

	ret = FUNC34(hdev);
	if (ret)
		FUNC7(dev, "DMA mode not available\n");

	FUNC32(&stm32_hash.lock);
	FUNC17(&hdev->list, &stm32_hash.dev_list);
	FUNC33(&stm32_hash.lock);

	/* Initialize crypto engine */
	hdev->engine = FUNC4(dev, 1);
	if (!hdev->engine) {
		ret = -ENOMEM;
		goto err_engine;
	}

	ret = FUNC6(hdev->engine);
	if (ret)
		goto err_engine_start;

	hdev->dma_mode = FUNC36(hdev, HASH_HWCFGR);

	/* Register algos */
	ret = FUNC37(hdev);
	if (ret)
		goto err_algs;

	FUNC9(dev, "Init HASH done HW ver %x DMA mode %u\n",
		 FUNC36(hdev, HASH_VER), hdev->dma_mode);

	FUNC26(dev);

	return 0;

err_algs:
err_engine_start:
	FUNC5(hdev->engine);
err_engine:
	FUNC32(&stm32_hash.lock);
	FUNC18(&hdev->list);
	FUNC33(&stm32_hash.lock);

	if (hdev->dma_lch)
		FUNC16(hdev->dma_lch);

	FUNC22(dev);
	FUNC25(dev);

	FUNC2(hdev->clk);

	return ret;
}