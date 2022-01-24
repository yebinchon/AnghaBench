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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct mtk_cec {int irq; int /*<<< orphan*/  clk; int /*<<< orphan*/  regs; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 int IRQF_TRIGGER_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct resource*) ; 
 struct mtk_cec* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct mtk_cec*) ; 
 int /*<<< orphan*/  FUNC9 (struct mtk_cec*) ; 
 int /*<<< orphan*/  mtk_cec_htplg_isr_thread ; 
 int FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct mtk_cec*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct mtk_cec *cec;
	struct resource *res;
	int ret;

	cec = FUNC6(dev, sizeof(*cec), GFP_KERNEL);
	if (!cec)
		return -ENOMEM;

	FUNC12(pdev, cec);
	FUNC13(&cec->lock);

	res = FUNC11(pdev, IORESOURCE_MEM, 0);
	cec->regs = FUNC5(dev, res);
	if (FUNC0(cec->regs)) {
		ret = FUNC1(cec->regs);
		FUNC3(dev, "Failed to ioremap cec: %d\n", ret);
		return ret;
	}

	cec->clk = FUNC4(dev, NULL);
	if (FUNC0(cec->clk)) {
		ret = FUNC1(cec->clk);
		FUNC3(dev, "Failed to get cec clock: %d\n", ret);
		return ret;
	}

	cec->irq = FUNC10(pdev, 0);
	if (cec->irq < 0) {
		FUNC3(dev, "Failed to get cec irq: %d\n", cec->irq);
		return cec->irq;
	}

	ret = FUNC7(dev, cec->irq, NULL,
					mtk_cec_htplg_isr_thread,
					IRQF_SHARED | IRQF_TRIGGER_LOW |
					IRQF_ONESHOT, "hdmi hpd", dev);
	if (ret) {
		FUNC3(dev, "Failed to register cec irq: %d\n", ret);
		return ret;
	}

	ret = FUNC2(cec->clk);
	if (ret) {
		FUNC3(dev, "Failed to enable cec clock: %d\n", ret);
		return ret;
	}

	FUNC9(cec);
	FUNC8(cec);

	return 0;
}