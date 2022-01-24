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
struct stm32_cryp {struct reset_control* clk; int /*<<< orphan*/  list; int /*<<< orphan*/  engine; struct device* dev; struct reset_control* regs; int /*<<< orphan*/  caps; } ;
struct reset_control {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CRYP_AUTOSUSPEND_DELAY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC1 (struct reset_control*) ; 
 int FUNC2 (struct reset_control*) ; 
 int /*<<< orphan*/  aead_algs ; 
 int /*<<< orphan*/  FUNC3 (struct reset_control*) ; 
 int FUNC4 (struct reset_control*) ; 
 TYPE_1__ cryp_list ; 
 int /*<<< orphan*/  crypto_algs ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 
 struct reset_control* FUNC14 (struct device*,int /*<<< orphan*/ *) ; 
 struct stm32_cryp* FUNC15 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct reset_control* FUNC16 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct stm32_cryp*) ; 
 struct reset_control* FUNC18 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct device*) ; 
 int FUNC22 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct platform_device*,struct stm32_cryp*) ; 
 int /*<<< orphan*/  FUNC24 (struct device*) ; 
 int /*<<< orphan*/  FUNC25 (struct device*) ; 
 int /*<<< orphan*/  FUNC26 (struct device*) ; 
 int /*<<< orphan*/  FUNC27 (struct device*) ; 
 int /*<<< orphan*/  FUNC28 (struct device*) ; 
 int /*<<< orphan*/  FUNC29 (struct device*) ; 
 int /*<<< orphan*/  FUNC30 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (struct device*) ; 
 int /*<<< orphan*/  FUNC32 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC33 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stm32_cryp_irq ; 
 int /*<<< orphan*/  stm32_cryp_irq_thread ; 
 int /*<<< orphan*/  FUNC36 (int) ; 

__attribute__((used)) static int FUNC37(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct stm32_cryp *cryp;
	struct reset_control *rst;
	int irq, ret;

	cryp = FUNC15(dev, sizeof(*cryp), GFP_KERNEL);
	if (!cryp)
		return -ENOMEM;

	cryp->caps = FUNC21(dev);
	if (!cryp->caps)
		return -ENODEV;

	cryp->dev = dev;

	cryp->regs = FUNC16(pdev, 0);
	if (FUNC1(cryp->regs))
		return FUNC2(cryp->regs);

	irq = FUNC22(pdev, 0);
	if (irq < 0)
		return irq;

	ret = FUNC17(dev, irq, stm32_cryp_irq,
					stm32_cryp_irq_thread, IRQF_ONESHOT,
					FUNC13(dev), cryp);
	if (ret) {
		FUNC11(dev, "Cannot grab IRQ\n");
		return ret;
	}

	cryp->clk = FUNC14(dev, NULL);
	if (FUNC1(cryp->clk)) {
		FUNC11(dev, "Could not get clock\n");
		return FUNC2(cryp->clk);
	}

	ret = FUNC4(cryp->clk);
	if (ret) {
		FUNC11(cryp->dev, "Failed to enable clock\n");
		return ret;
	}

	FUNC30(dev, CRYP_AUTOSUSPEND_DELAY);
	FUNC31(dev);

	FUNC26(dev);
	FUNC29(dev);
	FUNC25(dev);

	rst = FUNC18(dev, NULL);
	if (!FUNC1(rst)) {
		FUNC32(rst);
		FUNC36(2);
		FUNC33(rst);
	}

	FUNC23(pdev, cryp);

	FUNC34(&cryp_list.lock);
	FUNC19(&cryp->list, &cryp_list.dev_list);
	FUNC35(&cryp_list.lock);

	/* Initialize crypto engine */
	cryp->engine = FUNC5(dev, 1);
	if (!cryp->engine) {
		FUNC11(dev, "Could not init crypto engine\n");
		ret = -ENOMEM;
		goto err_engine1;
	}

	ret = FUNC7(cryp->engine);
	if (ret) {
		FUNC11(dev, "Could not start crypto engine\n");
		goto err_engine2;
	}

	ret = FUNC9(crypto_algs, FUNC0(crypto_algs));
	if (ret) {
		FUNC11(dev, "Could not register algs\n");
		goto err_algs;
	}

	ret = FUNC8(aead_algs, FUNC0(aead_algs));
	if (ret)
		goto err_aead_algs;

	FUNC12(dev, "Initialized\n");

	FUNC28(dev);

	return 0;

err_aead_algs:
	FUNC10(crypto_algs, FUNC0(crypto_algs));
err_algs:
err_engine2:
	FUNC6(cryp->engine);
err_engine1:
	FUNC34(&cryp_list.lock);
	FUNC20(&cryp->list);
	FUNC35(&cryp_list.lock);

	FUNC24(dev);
	FUNC27(dev);
	FUNC24(dev);
	FUNC27(dev);

	FUNC3(cryp->clk);

	return ret;
}