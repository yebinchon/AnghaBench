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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mtk_ddp_comp_funcs {int dummy; } ;
struct mtk_ddp_comp {int id; int /*<<< orphan*/ * larb_dev; int /*<<< orphan*/ * clk; scalar_t__ irq; int /*<<< orphan*/ * regs; int /*<<< orphan*/  funcs; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
typedef  enum mtk_ddp_comp_type { ____Placeholder_mtk_ddp_comp_type } mtk_ddp_comp_type ;
typedef  enum mtk_ddp_comp_id { ____Placeholder_mtk_ddp_comp_id } mtk_ddp_comp_id ;
struct TYPE_2__ {int type; int /*<<< orphan*/  funcs; } ;

/* Variables and functions */
 int DDP_COMPONENT_BLS ; 
 int DDP_COMPONENT_DPI0 ; 
 int DDP_COMPONENT_DPI1 ; 
 int DDP_COMPONENT_DSI0 ; 
 int DDP_COMPONENT_DSI1 ; 
 int DDP_COMPONENT_DSI2 ; 
 int DDP_COMPONENT_DSI3 ; 
 int DDP_COMPONENT_ID_MAX ; 
 int DDP_COMPONENT_PWM0 ; 
 int EINVAL ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int MTK_DISP_OVL ; 
 int MTK_DISP_RDMA ; 
 int MTK_DISP_WDMA ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,struct device_node*) ; 
 TYPE_1__* mtk_ddp_matches ; 
 int /*<<< orphan*/ * FUNC4 (struct device_node*,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/ * FUNC6 (struct device_node*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*) ; 
 struct device_node* FUNC9 (struct device_node*,char*,int /*<<< orphan*/ ) ; 

int FUNC10(struct device *dev, struct device_node *node,
		      struct mtk_ddp_comp *comp, enum mtk_ddp_comp_id comp_id,
		      const struct mtk_ddp_comp_funcs *funcs)
{
	enum mtk_ddp_comp_type type;
	struct device_node *larb_node;
	struct platform_device *larb_pdev;

	if (comp_id < 0 || comp_id >= DDP_COMPONENT_ID_MAX)
		return -EINVAL;

	type = mtk_ddp_matches[comp_id].type;

	comp->id = comp_id;
	comp->funcs = funcs ?: mtk_ddp_matches[comp_id].funcs;

	if (comp_id == DDP_COMPONENT_BLS ||
	    comp_id == DDP_COMPONENT_DPI0 ||
	    comp_id == DDP_COMPONENT_DPI1 ||
	    comp_id == DDP_COMPONENT_DSI0 ||
	    comp_id == DDP_COMPONENT_DSI1 ||
	    comp_id == DDP_COMPONENT_DSI2 ||
	    comp_id == DDP_COMPONENT_DSI3 ||
	    comp_id == DDP_COMPONENT_PWM0) {
		comp->regs = NULL;
		comp->clk = NULL;
		comp->irq = 0;
		return 0;
	}

	comp->regs = FUNC6(node, 0);
	comp->irq = FUNC7(node, 0);
	comp->clk = FUNC4(node, 0);
	if (FUNC0(comp->clk))
		return FUNC1(comp->clk);

	/* Only DMA capable components need the LARB property */
	comp->larb_dev = NULL;
	if (type != MTK_DISP_OVL &&
	    type != MTK_DISP_RDMA &&
	    type != MTK_DISP_WDMA)
		return 0;

	larb_node = FUNC9(node, "mediatek,larb", 0);
	if (!larb_node) {
		FUNC2(dev,
			"Missing mediadek,larb phandle in %pOF node\n", node);
		return -EINVAL;
	}

	larb_pdev = FUNC5(larb_node);
	if (!larb_pdev) {
		FUNC3(dev, "Waiting for larb device %pOF\n", larb_node);
		FUNC8(larb_node);
		return -EPROBE_DEFER;
	}
	FUNC8(larb_node);

	comp->larb_dev = &larb_pdev->dev;

	return 0;
}