#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sti_compositor_data {int dummy; } ;
struct sti_compositor {void** vtg; void* rst_aux; void* rst_main; void* clk_pix_aux; void* clk_pix_main; void* clk_compo_aux; void* clk_compo_main; int /*<<< orphan*/ * regs; int /*<<< orphan*/  data; TYPE_1__* vtg_vblank_nb; struct device* dev; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
struct TYPE_3__ {int /*<<< orphan*/  notifier_call; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 unsigned int STI_MAX_MIXER ; 
 size_t STI_MIXER_AUX ; 
 size_t STI_MIXER_MAIN ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  compositor_of_match ; 
 void* FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sti_compositor* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ ,struct device_node*) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*) ; 
 struct device_node* FUNC12 (struct device_node*,char*,int) ; 
 void* FUNC13 (struct device_node*) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct sti_compositor*) ; 
 int /*<<< orphan*/  FUNC16 (void*) ; 
 int /*<<< orphan*/  FUNC17 (struct resource*) ; 
 int /*<<< orphan*/  sti_compositor_ops ; 
 int /*<<< orphan*/  sti_crtc_vblank_cb ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct device_node *vtg_np;
	struct sti_compositor *compo;
	struct resource *res;
	unsigned int i;

	compo = FUNC7(dev, sizeof(*compo), GFP_KERNEL);
	if (!compo) {
		FUNC1("Failed to allocate compositor context\n");
		return -ENOMEM;
	}
	compo->dev = dev;
	for (i = 0; i < STI_MAX_MIXER; i++)
		compo->vtg_vblank_nb[i].notifier_call = sti_crtc_vblank_cb;

	/* populate data structure depending on compatibility */
	FUNC0(!FUNC10(compositor_of_match, np)->data);

	FUNC9(&compo->data, FUNC10(compositor_of_match, np)->data,
	       sizeof(struct sti_compositor_data));

	/* Get Memory ressources */
	res = FUNC14(pdev, IORESOURCE_MEM, 0);
	if (res == NULL) {
		FUNC1("Get memory resource failed\n");
		return -ENXIO;
	}
	compo->regs = FUNC6(dev, res->start, FUNC17(res));
	if (compo->regs == NULL) {
		FUNC1("Register mapping failed\n");
		return -ENXIO;
	}

	/* Get clock resources */
	compo->clk_compo_main = FUNC5(dev, "compo_main");
	if (FUNC2(compo->clk_compo_main)) {
		FUNC1("Cannot get compo_main clock\n");
		return FUNC3(compo->clk_compo_main);
	}

	compo->clk_compo_aux = FUNC5(dev, "compo_aux");
	if (FUNC2(compo->clk_compo_aux)) {
		FUNC1("Cannot get compo_aux clock\n");
		return FUNC3(compo->clk_compo_aux);
	}

	compo->clk_pix_main = FUNC5(dev, "pix_main");
	if (FUNC2(compo->clk_pix_main)) {
		FUNC1("Cannot get pix_main clock\n");
		return FUNC3(compo->clk_pix_main);
	}

	compo->clk_pix_aux = FUNC5(dev, "pix_aux");
	if (FUNC2(compo->clk_pix_aux)) {
		FUNC1("Cannot get pix_aux clock\n");
		return FUNC3(compo->clk_pix_aux);
	}

	/* Get reset resources */
	compo->rst_main = FUNC8(dev, "compo-main");
	/* Take compo main out of reset */
	if (!FUNC2(compo->rst_main))
		FUNC16(compo->rst_main);

	compo->rst_aux = FUNC8(dev, "compo-aux");
	/* Take compo aux out of reset */
	if (!FUNC2(compo->rst_aux))
		FUNC16(compo->rst_aux);

	vtg_np = FUNC12(pdev->dev.of_node, "st,vtg", 0);
	if (vtg_np)
		compo->vtg[STI_MIXER_MAIN] = FUNC13(vtg_np);
	FUNC11(vtg_np);

	vtg_np = FUNC12(pdev->dev.of_node, "st,vtg", 1);
	if (vtg_np)
		compo->vtg[STI_MIXER_AUX] = FUNC13(vtg_np);
	FUNC11(vtg_np);

	FUNC15(pdev, compo);

	return FUNC4(&pdev->dev, &sti_compositor_ops);
}