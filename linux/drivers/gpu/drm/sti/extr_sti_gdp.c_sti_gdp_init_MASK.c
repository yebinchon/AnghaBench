#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sti_gdp_node {int dummy; } ;
struct TYPE_6__ {int desc; } ;
struct sti_gdp {void* clk_aux_parent; TYPE_3__* dev; void* clk_main_parent; void* clk_pix; TYPE_2__ plane; TYPE_1__* node_list; } ;
struct device_node {int dummy; } ;
typedef  int dma_addr_t ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct TYPE_5__ {int top_field_paddr; int btm_field_paddr; void* btm_field; void* top_field; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,void*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int GDP_NODE_NB_BANK ; 
 int GDP_NODE_PER_FIELD ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (void*) ; 
#define  STI_GDP_0 131 
#define  STI_GDP_1 130 
#define  STI_GDP_2 129 
#define  STI_GDP_3 128 
 void* FUNC3 (TYPE_3__*,char*) ; 
 void* FUNC4 (TYPE_3__*,unsigned int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC6 (struct device_node*,char*) ; 

__attribute__((used)) static void FUNC7(struct sti_gdp *gdp)
{
	struct device_node *np = gdp->dev->of_node;
	dma_addr_t dma_addr;
	void *base;
	unsigned int i, size;

	/* Allocate all the nodes within a single memory page */
	size = sizeof(struct sti_gdp_node) *
	    GDP_NODE_PER_FIELD * GDP_NODE_NB_BANK;
	base = FUNC4(gdp->dev, size, &dma_addr, GFP_KERNEL);

	if (!base) {
		FUNC1("Failed to allocate memory for GDP node\n");
		return;
	}
	FUNC5(base, 0, size);

	for (i = 0; i < GDP_NODE_NB_BANK; i++) {
		if (dma_addr & 0xF) {
			FUNC1("Mem alignment failed\n");
			return;
		}
		gdp->node_list[i].top_field = base;
		gdp->node_list[i].top_field_paddr = dma_addr;

		FUNC0("node[%d].top_field=%p\n", i, base);
		base += sizeof(struct sti_gdp_node);
		dma_addr += sizeof(struct sti_gdp_node);

		if (dma_addr & 0xF) {
			FUNC1("Mem alignment failed\n");
			return;
		}
		gdp->node_list[i].btm_field = base;
		gdp->node_list[i].btm_field_paddr = dma_addr;
		FUNC0("node[%d].btm_field=%p\n", i, base);
		base += sizeof(struct sti_gdp_node);
		dma_addr += sizeof(struct sti_gdp_node);
	}

	if (FUNC6(np, "st,stih407-compositor")) {
		/* GDP of STiH407 chip have its own pixel clock */
		char *clk_name;

		switch (gdp->plane.desc) {
		case STI_GDP_0:
			clk_name = "pix_gdp1";
			break;
		case STI_GDP_1:
			clk_name = "pix_gdp2";
			break;
		case STI_GDP_2:
			clk_name = "pix_gdp3";
			break;
		case STI_GDP_3:
			clk_name = "pix_gdp4";
			break;
		default:
			FUNC1("GDP id not recognized\n");
			return;
		}

		gdp->clk_pix = FUNC3(gdp->dev, clk_name);
		if (FUNC2(gdp->clk_pix))
			FUNC1("Cannot get %s clock\n", clk_name);

		gdp->clk_main_parent = FUNC3(gdp->dev, "main_parent");
		if (FUNC2(gdp->clk_main_parent))
			FUNC1("Cannot get main_parent clock\n");

		gdp->clk_aux_parent = FUNC3(gdp->dev, "aux_parent");
		if (FUNC2(gdp->clk_aux_parent))
			FUNC1("Cannot get aux_parent clock\n");
	}
}