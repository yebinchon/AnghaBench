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
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct mtk_ddp {int /*<<< orphan*/  mutex_mod; int /*<<< orphan*/  regs; int /*<<< orphan*/  clk; TYPE_1__* mutex; } ;
struct TYPE_2__ {int id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct resource*) ; 
 struct mtk_ddp* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct mtk_ddp*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct mtk_ddp *ddp;
	struct resource *regs;
	int i;

	ddp = FUNC5(dev, sizeof(*ddp), GFP_KERNEL);
	if (!ddp)
		return -ENOMEM;

	for (i = 0; i < 10; i++)
		ddp->mutex[i].id = i;

	ddp->clk = FUNC3(dev, NULL);
	if (FUNC0(ddp->clk)) {
		FUNC2(dev, "Failed to get clock\n");
		return FUNC1(ddp->clk);
	}

	regs = FUNC7(pdev, IORESOURCE_MEM, 0);
	ddp->regs = FUNC4(dev, regs);
	if (FUNC0(ddp->regs)) {
		FUNC2(dev, "Failed to map mutex registers\n");
		return FUNC1(ddp->regs);
	}

	ddp->mutex_mod = FUNC6(dev);

	FUNC8(pdev, ddp);

	return 0;
}