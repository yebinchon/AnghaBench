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
struct resource {int dummy; } ;
struct regmap {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct mtk_hdmi {int /*<<< orphan*/  ddc_adpt; int /*<<< orphan*/  next_bridge; struct regmap* regs; struct regmap* sys_regmap; int /*<<< orphan*/  sys_offset; struct device* cec_dev; int /*<<< orphan*/  dev; } ;
struct device_node {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 struct regmap* FUNC3 (struct device*,struct resource*) ; 
 int FUNC4 (struct mtk_hdmi*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 struct platform_device* FUNC7 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*) ; 
 struct device_node* FUNC9 (int /*<<< orphan*/ ,char*) ; 
 struct device_node* FUNC10 (struct device_node*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*) ; 
 struct device_node* FUNC12 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct device_node*,char*,int,int /*<<< orphan*/ *) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC15 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC16(struct mtk_hdmi *hdmi,
				   struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct device_node *cec_np, *remote, *i2c_np;
	struct platform_device *cec_pdev;
	struct regmap *regmap;
	struct resource *mem;
	int ret;

	ret = FUNC4(hdmi, np);
	if (ret) {
		FUNC2(dev, "Failed to get clocks: %d\n", ret);
		return ret;
	}

	/* The CEC module handles HDMI hotplug detection */
	cec_np = FUNC9(np->parent, "mediatek,mt8173-cec");
	if (!cec_np) {
		FUNC2(dev, "Failed to find CEC node\n");
		return -EINVAL;
	}

	cec_pdev = FUNC7(cec_np);
	if (!cec_pdev) {
		FUNC2(hdmi->dev, "Waiting for CEC device %pOF\n",
			cec_np);
		FUNC11(cec_np);
		return -EPROBE_DEFER;
	}
	FUNC11(cec_np);
	hdmi->cec_dev = &cec_pdev->dev;

	/*
	 * The mediatek,syscon-hdmi property contains a phandle link to the
	 * MMSYS_CONFIG device and the register offset of the HDMI_SYS_CFG
	 * registers it contains.
	 */
	regmap = FUNC15(np, "mediatek,syscon-hdmi");
	ret = FUNC13(np, "mediatek,syscon-hdmi", 1,
					 &hdmi->sys_offset);
	if (FUNC0(regmap))
		ret = FUNC1(regmap);
	if (ret) {
		FUNC2(dev,
			"Failed to get system configuration registers: %d\n",
			ret);
		return ret;
	}
	hdmi->sys_regmap = regmap;

	mem = FUNC14(pdev, IORESOURCE_MEM, 0);
	hdmi->regs = FUNC3(dev, mem);
	if (FUNC0(hdmi->regs))
		return FUNC1(hdmi->regs);

	remote = FUNC10(np, 1, 0);
	if (!remote)
		return -EINVAL;

	if (!FUNC5(remote, "hdmi-connector")) {
		hdmi->next_bridge = FUNC6(remote);
		if (!hdmi->next_bridge) {
			FUNC2(dev, "Waiting for external bridge\n");
			FUNC11(remote);
			return -EPROBE_DEFER;
		}
	}

	i2c_np = FUNC12(remote, "ddc-i2c-bus", 0);
	if (!i2c_np) {
		FUNC2(dev, "Failed to find ddc-i2c-bus node in %pOF\n",
			remote);
		FUNC11(remote);
		return -EINVAL;
	}
	FUNC11(remote);

	hdmi->ddc_adpt = FUNC8(i2c_np);
	FUNC11(i2c_np);
	if (!hdmi->ddc_adpt) {
		FUNC2(dev, "Failed to get ddc i2c adapter by node\n");
		return -EINVAL;
	}

	return 0;
}