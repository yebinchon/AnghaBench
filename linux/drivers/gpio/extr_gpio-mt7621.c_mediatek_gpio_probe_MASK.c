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
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct mtk {struct device* dev; int /*<<< orphan*/  gpio_irq; int /*<<< orphan*/  base; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MTK_BANK_CNT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct mtk* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,struct device_node*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct mtk*) ; 

__attribute__((used)) static int
FUNC7(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct mtk *mtk;
	int i;
	int ret;

	mtk = FUNC2(dev, sizeof(*mtk), GFP_KERNEL);
	if (!mtk)
		return -ENOMEM;

	mtk->base = FUNC3(pdev, 0);
	if (FUNC0(mtk->base))
		return FUNC1(mtk->base);

	mtk->gpio_irq = FUNC4(np, 0);
	mtk->dev = dev;
	FUNC6(pdev, mtk);

	for (i = 0; i < MTK_BANK_CNT; i++) {
		ret = FUNC5(dev, np, i);
		if (ret)
			return ret;
	}

	return 0;
}