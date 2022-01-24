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
typedef  int u32 ;
struct regmap {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct fpga_bridge {int dummy; } ;
struct alt_fpga2sdram_data {char* mask; struct regmap* sdrctl; struct device* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  F2S_BRIDGE_NAME ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  SYSMGR_ISWGRP_HANDOFF3 ; 
 int FUNC2 (struct alt_fpga2sdram_data*,int) ; 
 int /*<<< orphan*/  altera_fpga2sdram_br_ops ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int) ; 
 struct fpga_bridge* FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct alt_fpga2sdram_data*) ; 
 struct alt_fpga2sdram_data* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct fpga_bridge*) ; 
 int /*<<< orphan*/  FUNC9 (struct fpga_bridge*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct fpga_bridge*) ; 
 int /*<<< orphan*/  FUNC12 (struct regmap*,int /*<<< orphan*/ ,char**) ; 
 void* FUNC13 (char*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct alt_fpga2sdram_data *priv;
	struct fpga_bridge *br;
	u32 enable;
	struct regmap *sysmgr;
	int ret = 0;

	priv = FUNC7(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->dev = dev;

	priv->sdrctl = FUNC13("altr,sdr-ctl");
	if (FUNC0(priv->sdrctl)) {
		FUNC3(dev, "regmap for altr,sdr-ctl lookup failed.\n");
		return FUNC1(priv->sdrctl);
	}

	sysmgr = FUNC13("altr,sys-mgr");
	if (FUNC0(sysmgr)) {
		FUNC3(dev, "regmap for altr,sys-mgr lookup failed.\n");
		return FUNC1(sysmgr);
	}

	/* Get f2s bridge configuration saved in handoff register */
	FUNC12(sysmgr, SYSMGR_ISWGRP_HANDOFF3, &priv->mask);

	br = FUNC6(dev, F2S_BRIDGE_NAME,
				     &altera_fpga2sdram_br_ops, priv);
	if (!br)
		return -ENOMEM;

	FUNC11(pdev, br);

	ret = FUNC8(br);
	if (ret)
		return ret;

	FUNC4(dev, "driver initialized with handoff %08x\n", priv->mask);

	if (!FUNC10(dev->of_node, "bridge-enable", &enable)) {
		if (enable > 1) {
			FUNC5(dev, "invalid bridge-enable %u > 1\n", enable);
		} else {
			FUNC4(dev, "%s bridge\n",
				 (enable ? "enabling" : "disabling"));
			ret = FUNC2(priv, enable);
			if (ret) {
				FUNC9(br);
				return ret;
			}
		}
	}

	return ret;
}