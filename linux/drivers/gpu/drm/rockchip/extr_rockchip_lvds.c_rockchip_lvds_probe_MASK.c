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
struct rockchip_lvds {int /*<<< orphan*/  pclk; int /*<<< orphan*/  grf; TYPE_1__* pins; struct device* dev; int /*<<< orphan*/  regs; int /*<<< orphan*/  soc_data; } ;
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int /*<<< orphan*/  default_state; int /*<<< orphan*/  p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct rockchip_lvds*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,struct resource*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,TYPE_1__*) ; 
 void* FUNC10 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 struct of_device_id* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rockchip_lvds_component_ops ; 
 int /*<<< orphan*/  rockchip_lvds_dt_ids ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct rockchip_lvds *lvds;
	const struct of_device_id *match;
	struct resource *res;
	int ret;

	if (!dev->of_node)
		return -ENODEV;

	lvds = FUNC10(&pdev->dev, sizeof(*lvds), GFP_KERNEL);
	if (!lvds)
		return -ENOMEM;

	lvds->dev = dev;
	match = FUNC12(rockchip_lvds_dt_ids, dev->of_node);
	if (!match)
		return -ENODEV;
	lvds->soc_data = match->data;

	res = FUNC14(pdev, IORESOURCE_MEM, 0);
	lvds->regs = FUNC8(&pdev->dev, res);
	if (FUNC1(lvds->regs))
		return FUNC2(lvds->regs);

	lvds->pclk = FUNC7(&pdev->dev, "pclk_lvds");
	if (FUNC1(lvds->pclk)) {
		FUNC0(dev, "could not get pclk_lvds\n");
		return FUNC2(lvds->pclk);
	}

	lvds->pins = FUNC10(lvds->dev, sizeof(*lvds->pins),
				  GFP_KERNEL);
	if (!lvds->pins)
		return -ENOMEM;

	lvds->pins->p = FUNC11(lvds->dev);
	if (FUNC1(lvds->pins->p)) {
		FUNC0(dev, "no pinctrl handle\n");
		FUNC9(lvds->dev, lvds->pins);
		lvds->pins = NULL;
	} else {
		lvds->pins->default_state =
			FUNC13(lvds->pins->p, "lcdc");
		if (FUNC1(lvds->pins->default_state)) {
			FUNC0(dev, "no default pinctrl state\n");
			FUNC9(lvds->dev, lvds->pins);
			lvds->pins = NULL;
		}
	}

	lvds->grf = FUNC15(dev->of_node,
						    "rockchip,grf");
	if (FUNC1(lvds->grf)) {
		FUNC0(dev, "missing rockchip,grf property\n");
		return FUNC2(lvds->grf);
	}

	FUNC6(dev, lvds);

	ret = FUNC3(lvds->pclk);
	if (ret < 0) {
		FUNC0(dev, "failed to prepare pclk_lvds\n");
		return ret;
	}
	ret = FUNC5(&pdev->dev, &rockchip_lvds_component_ops);
	if (ret < 0) {
		FUNC0(dev, "failed to add component\n");
		FUNC4(lvds->pclk);
	}

	return ret;
}