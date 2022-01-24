#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct versatile_panel_type {scalar_t__ ib2; int /*<<< orphan*/  name; int /*<<< orphan*/  magic; } ;
struct TYPE_3__ {int /*<<< orphan*/ * funcs; struct device* dev; } ;
struct versatile_panel {TYPE_1__ panel; struct regmap* ib2_map; struct versatile_panel_type const* panel_type; struct regmap* map; struct device* dev; } ;
struct regmap {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; struct device* parent; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int FUNC0 (struct versatile_panel_type*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  SYS_CLCD ; 
 int /*<<< orphan*/  SYS_CLCD_CLCDID_MASK ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 struct versatile_panel* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct regmap* FUNC9 (int /*<<< orphan*/ ) ; 
 struct regmap* FUNC10 (char*) ; 
 int /*<<< orphan*/  versatile_panel_drm_funcs ; 
 struct versatile_panel_type* versatile_panels ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct versatile_panel *vpanel;
	struct device *parent;
	struct regmap *map;
	int ret;
	u32 val;
	int i;

	parent = dev->parent;
	if (!parent) {
		FUNC3(dev, "no parent for versatile panel\n");
		return -ENODEV;
	}
	map = FUNC9(parent->of_node);
	if (FUNC1(map)) {
		FUNC3(dev, "no regmap for versatile panel parent\n");
		return FUNC2(map);
	}

	vpanel = FUNC5(dev, sizeof(*vpanel), GFP_KERNEL);
	if (!vpanel)
		return -ENOMEM;

	ret = FUNC8(map, SYS_CLCD, &val);
	if (ret) {
		FUNC3(dev, "cannot access syscon regs\n");
		return ret;
	}

	val &= SYS_CLCD_CLCDID_MASK;

	for (i = 0; i < FUNC0(versatile_panels); i++) {
		const struct versatile_panel_type *pt;

		pt = &versatile_panels[i];
		if (pt->magic == val) {
			vpanel->panel_type = pt;
			break;
		}
	}

	/* No panel detected or VGA, let's leave this show */
	if (i == FUNC0(versatile_panels)) {
		FUNC4(dev, "no panel detected\n");
		return -ENODEV;
	}

	FUNC4(dev, "detected: %s\n", vpanel->panel_type->name);
	vpanel->dev = dev;
	vpanel->map = map;

	/* Check if the panel is mounted on an IB2 daughterboard */
	if (vpanel->panel_type->ib2) {
		vpanel->ib2_map = FUNC10(
			"arm,versatile-ib2-syscon");
		if (FUNC1(vpanel->ib2_map))
			vpanel->ib2_map = NULL;
		else
			FUNC4(dev, "panel mounted on IB2 daughterboard\n");
	}

	FUNC7(&vpanel->panel);
	vpanel->panel.dev = dev;
	vpanel->panel.funcs = &versatile_panel_drm_funcs;

	return FUNC6(&vpanel->panel);
}