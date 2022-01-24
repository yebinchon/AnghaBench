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
struct mtk_disp_color {int /*<<< orphan*/  data; int /*<<< orphan*/  ddp_comp; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MTK_DISP_COLOR ; 
 int FUNC0 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct mtk_disp_color* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mtk_disp_color_component_ops ; 
 int /*<<< orphan*/  mtk_disp_color_funcs ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct mtk_disp_color*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct mtk_disp_color *priv;
	int comp_id;
	int ret;

	priv = FUNC2(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	comp_id = FUNC3(dev->of_node, MTK_DISP_COLOR);
	if (comp_id < 0) {
		FUNC1(dev, "Failed to identify by alias: %d\n", comp_id);
		return comp_id;
	}

	ret = FUNC4(dev, dev->of_node, &priv->ddp_comp, comp_id,
				&mtk_disp_color_funcs);
	if (ret) {
		FUNC1(dev, "Failed to initialize component: %d\n", ret);
		return ret;
	}

	priv->data = FUNC5(dev);

	FUNC6(pdev, priv);

	ret = FUNC0(dev, &mtk_disp_color_component_ops);
	if (ret)
		FUNC1(dev, "Failed to add component: %d\n", ret);

	return ret;
}