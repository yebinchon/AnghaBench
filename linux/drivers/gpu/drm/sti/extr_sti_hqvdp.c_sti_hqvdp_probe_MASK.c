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
struct sti_hqvdp {int /*<<< orphan*/  vtg; void* reset; void* clk_pix_main; void* clk; int /*<<< orphan*/  regs; struct device* dev; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (void*) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ *) ; 
 void* FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sti_hqvdp* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*) ; 
 struct device_node* FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct sti_hqvdp*) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 int /*<<< orphan*/  FUNC14 (struct resource*) ; 
 int /*<<< orphan*/  sti_hqvdp_ops ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *vtg_np;
	struct sti_hqvdp *hqvdp;
	struct resource *res;

	FUNC0("\n");

	hqvdp = FUNC6(dev, sizeof(*hqvdp), GFP_KERNEL);
	if (!hqvdp) {
		FUNC1("Failed to allocate HQVDP context\n");
		return -ENOMEM;
	}

	hqvdp->dev = dev;

	/* Get Memory resources */
	res = FUNC11(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC1("Get memory resource failed\n");
		return -ENXIO;
	}
	hqvdp->regs = FUNC5(dev, res->start, FUNC14(res));
	if (!hqvdp->regs) {
		FUNC1("Register mapping failed\n");
		return -ENXIO;
	}

	/* Get clock resources */
	hqvdp->clk = FUNC4(dev, "hqvdp");
	hqvdp->clk_pix_main = FUNC4(dev, "pix_main");
	if (FUNC2(hqvdp->clk) || FUNC2(hqvdp->clk_pix_main)) {
		FUNC1("Cannot get clocks\n");
		return -ENXIO;
	}

	/* Get reset resources */
	hqvdp->reset = FUNC7(dev, "hqvdp");
	if (!FUNC2(hqvdp->reset))
		FUNC13(hqvdp->reset);

	vtg_np = FUNC9(pdev->dev.of_node, "st,vtg", 0);
	if (vtg_np)
		hqvdp->vtg = FUNC10(vtg_np);
	FUNC8(vtg_np);

	FUNC12(pdev, hqvdp);

	return FUNC3(&pdev->dev, &sti_hqvdp_ops);
}