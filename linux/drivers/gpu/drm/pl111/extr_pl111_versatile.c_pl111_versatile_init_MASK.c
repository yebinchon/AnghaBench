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
struct regmap {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct pl111_drm_dev_private {int /*<<< orphan*/ * variant; int /*<<< orphan*/  variant_display_disable; int /*<<< orphan*/  variant_display_enable; int /*<<< orphan*/  ctrl; int /*<<< orphan*/  ienb; } ;
struct of_device_id {scalar_t__ data; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
typedef  enum versatile_clcd { ____Placeholder_versatile_clcd } versatile_clcd ;

/* Variables and functions */
 int /*<<< orphan*/  CLCD_PL111_CNTL ; 
 int /*<<< orphan*/  CLCD_PL111_IENB ; 
 int EPROBE_DEFER ; 
#define  INTEGRATOR_CLCD_CM 135 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
#define  REALVIEW_CLCD_EB 134 
#define  REALVIEW_CLCD_PB1176 133 
#define  REALVIEW_CLCD_PB11MP 132 
#define  REALVIEW_CLCD_PBA8 131 
#define  REALVIEW_CLCD_PBX 130 
#define  VERSATILE_CLCD 129 
#define  VEXPRESS_CLCD_V2M 128 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct regmap* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct platform_device* FUNC5 (struct device_node*) ; 
 struct device_node* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct of_device_id const**) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 int /*<<< orphan*/  pl110_integrator ; 
 int /*<<< orphan*/  pl110_versatile ; 
 int /*<<< orphan*/  pl111_integrator_enable ; 
 int /*<<< orphan*/  pl111_realview ; 
 int /*<<< orphan*/  pl111_realview_clcd_disable ; 
 int /*<<< orphan*/  pl111_realview_clcd_enable ; 
 int /*<<< orphan*/  pl111_versatile_disable ; 
 int /*<<< orphan*/  pl111_versatile_enable ; 
 int /*<<< orphan*/  pl111_vexpress ; 
 int FUNC8 (struct device*,struct pl111_drm_dev_private*,struct regmap*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*) ; 
 struct regmap* FUNC10 (struct device_node*) ; 
 int /*<<< orphan*/  versatile_clcd_of_match ; 
 struct regmap* versatile_syscon_map ; 
 int FUNC11 () ; 

int FUNC12(struct device *dev, struct pl111_drm_dev_private *priv)
{
	const struct of_device_id *clcd_id;
	enum versatile_clcd versatile_clcd_type;
	struct device_node *np;
	struct regmap *map;
	int ret;

	np = FUNC6(NULL, versatile_clcd_of_match,
					     &clcd_id);
	if (!np) {
		/* Non-ARM reference designs, just bail out */
		return 0;
	}
	versatile_clcd_type = (enum versatile_clcd)clcd_id->data;

	/* Versatile Express special handling */
	if (versatile_clcd_type == VEXPRESS_CLCD_V2M) {
		struct platform_device *pdev;

		/* Registers a driver for the muxfpga */
		ret = FUNC11();
		if (ret) {
			FUNC2(dev, "unable to initialize muxfpga driver\n");
			FUNC7(np);
			return ret;
		}

		/* Call into deep Vexpress configuration API */
		pdev = FUNC5(np);
		if (!pdev) {
			FUNC2(dev, "can't find the sysreg device, deferring\n");
			FUNC7(np);
			return -EPROBE_DEFER;
		}
		map = FUNC3(&pdev->dev);
		if (!map) {
			FUNC2(dev, "sysreg has not yet probed\n");
			FUNC9(pdev);
			FUNC7(np);
			return -EPROBE_DEFER;
		}
	} else {
		map = FUNC10(np);
	}
	FUNC7(np);

	if (FUNC0(map)) {
		FUNC2(dev, "no Versatile syscon regmap\n");
		return FUNC1(map);
	}

	switch (versatile_clcd_type) {
	case INTEGRATOR_CLCD_CM:
		versatile_syscon_map = map;
		priv->variant = &pl110_integrator;
		priv->variant_display_enable = pl111_integrator_enable;
		FUNC4(dev, "set up callbacks for Integrator PL110\n");
		break;
	case VERSATILE_CLCD:
		versatile_syscon_map = map;
		/* This can do RGB565 with external PLD */
		priv->variant = &pl110_versatile;
		priv->variant_display_enable = pl111_versatile_enable;
		priv->variant_display_disable = pl111_versatile_disable;
		/*
		 * The Versatile has a variant halfway between PL110
		 * and PL111 where these two registers have already been
		 * swapped.
		 */
		priv->ienb = CLCD_PL111_IENB;
		priv->ctrl = CLCD_PL111_CNTL;
		FUNC4(dev, "set up callbacks for Versatile PL110\n");
		break;
	case REALVIEW_CLCD_EB:
	case REALVIEW_CLCD_PB1176:
	case REALVIEW_CLCD_PB11MP:
	case REALVIEW_CLCD_PBA8:
	case REALVIEW_CLCD_PBX:
		versatile_syscon_map = map;
		priv->variant = &pl111_realview;
		priv->variant_display_enable = pl111_realview_clcd_enable;
		priv->variant_display_disable = pl111_realview_clcd_disable;
		FUNC4(dev, "set up callbacks for RealView PL111\n");
		break;
	case VEXPRESS_CLCD_V2M:
		priv->variant = &pl111_vexpress;
		FUNC4(dev, "initializing Versatile Express PL111\n");
		ret = FUNC8(dev, priv, map);
		if (ret)
			return ret;
		break;
	default:
		FUNC4(dev, "unknown Versatile system controller\n");
		break;
	}

	return 0;
}