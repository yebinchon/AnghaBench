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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {scalar_t__ regs; } ;
struct mtk_disp_rdma {int /*<<< orphan*/  data; TYPE_1__ ddp_comp; } ;

/* Variables and functions */
 scalar_t__ DISP_REG_RDMA_INT_ENABLE ; 
 scalar_t__ DISP_REG_RDMA_INT_STATUS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_TRIGGER_NONE ; 
 int /*<<< orphan*/  MTK_DISP_RDMA ; 
 int FUNC0 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct mtk_disp_rdma* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mtk_disp_rdma*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mtk_disp_rdma_component_ops ; 
 int /*<<< orphan*/  mtk_disp_rdma_funcs ; 
 int /*<<< orphan*/  mtk_disp_rdma_irq_handler ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct mtk_disp_rdma*) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct mtk_disp_rdma *priv;
	int comp_id;
	int irq;
	int ret;

	priv = FUNC3(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	irq = FUNC8(pdev, 0);
	if (irq < 0)
		return irq;

	comp_id = FUNC5(dev->of_node, MTK_DISP_RDMA);
	if (comp_id < 0) {
		FUNC1(dev, "Failed to identify by alias: %d\n", comp_id);
		return comp_id;
	}

	ret = FUNC6(dev, dev->of_node, &priv->ddp_comp, comp_id,
				&mtk_disp_rdma_funcs);
	if (ret) {
		FUNC1(dev, "Failed to initialize component: %d\n", ret);
		return ret;
	}

	/* Disable and clear pending interrupts */
	FUNC10(0x0, priv->ddp_comp.regs + DISP_REG_RDMA_INT_ENABLE);
	FUNC10(0x0, priv->ddp_comp.regs + DISP_REG_RDMA_INT_STATUS);

	ret = FUNC4(dev, irq, mtk_disp_rdma_irq_handler,
			       IRQF_TRIGGER_NONE, FUNC2(dev), priv);
	if (ret < 0) {
		FUNC1(dev, "Failed to request irq %d: %d\n", irq, ret);
		return ret;
	}

	priv->data = FUNC7(dev);

	FUNC9(pdev, priv);

	ret = FUNC0(dev, &mtk_disp_rdma_component_ops);
	if (ret)
		FUNC1(dev, "Failed to add component: %d\n", ret);

	return ret;
}