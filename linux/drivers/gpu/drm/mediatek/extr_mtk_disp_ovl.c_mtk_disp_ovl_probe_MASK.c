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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct mtk_disp_ovl {int /*<<< orphan*/  data; int /*<<< orphan*/  ddp_comp; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_TRIGGER_NONE ; 
 int /*<<< orphan*/  MTK_DISP_OVL ; 
 int FUNC0 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct mtk_disp_ovl* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mtk_disp_ovl*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mtk_disp_ovl_component_ops ; 
 int /*<<< orphan*/  mtk_disp_ovl_funcs ; 
 int /*<<< orphan*/  mtk_disp_ovl_irq_handler ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct mtk_disp_ovl*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct mtk_disp_ovl *priv;
	int comp_id;
	int irq;
	int ret;

	priv = FUNC3(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	irq = FUNC8(pdev, 0);
	if (irq < 0)
		return irq;

	comp_id = FUNC5(dev->of_node, MTK_DISP_OVL);
	if (comp_id < 0) {
		FUNC1(dev, "Failed to identify by alias: %d\n", comp_id);
		return comp_id;
	}

	ret = FUNC6(dev, dev->of_node, &priv->ddp_comp, comp_id,
				&mtk_disp_ovl_funcs);
	if (ret) {
		FUNC1(dev, "Failed to initialize component: %d\n", ret);
		return ret;
	}

	priv->data = FUNC7(dev);

	FUNC9(pdev, priv);

	ret = FUNC4(dev, irq, mtk_disp_ovl_irq_handler,
			       IRQF_TRIGGER_NONE, FUNC2(dev), priv);
	if (ret < 0) {
		FUNC1(dev, "Failed to request irq %d: %d\n", irq, ret);
		return ret;
	}

	ret = FUNC0(dev, &mtk_disp_ovl_component_ops);
	if (ret)
		FUNC1(dev, "Failed to add component: %d\n", ret);

	return ret;
}