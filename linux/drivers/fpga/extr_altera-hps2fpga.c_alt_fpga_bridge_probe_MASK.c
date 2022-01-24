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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct fpga_bridge {int dummy; } ;
struct altera_hps2fpga_data {int /*<<< orphan*/  clk; int /*<<< orphan*/  name; int /*<<< orphan*/  l3reg; scalar_t__ remap_mask; int /*<<< orphan*/  bridge_reset; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct altera_hps2fpga_data*,int) ; 
 int /*<<< orphan*/  altera_fpga_of_match ; 
 int /*<<< orphan*/  altera_hps2fpga_br_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int /*<<< orphan*/ *) ; 
 struct fpga_bridge* FUNC9 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct altera_hps2fpga_data*) ; 
 int FUNC10 (struct fpga_bridge*) ; 
 struct of_device_id* FUNC11 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct fpga_bridge*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct altera_hps2fpga_data *priv;
	const struct of_device_id *of_id;
	struct fpga_bridge *br;
	u32 enable;
	int ret;

	of_id = FUNC11(altera_fpga_of_match, dev);
	if (!of_id) {
		FUNC5(dev, "failed to match device\n");
		return -ENODEV;
	}

	priv = (struct altera_hps2fpga_data *)of_id->data;

	priv->bridge_reset = FUNC13(dev->of_node,
								     0);
	if (FUNC0(priv->bridge_reset)) {
		FUNC5(dev, "Could not get %s reset control\n", priv->name);
		return FUNC1(priv->bridge_reset);
	}

	if (priv->remap_mask) {
		priv->l3reg = FUNC15("altr,l3regs");
		if (FUNC0(priv->l3reg)) {
			FUNC5(dev, "regmap for altr,l3regs lookup failed\n");
			return FUNC1(priv->l3reg);
		}
	}

	priv->clk = FUNC8(dev, NULL);
	if (FUNC0(priv->clk)) {
		FUNC5(dev, "no clock specified\n");
		return FUNC1(priv->clk);
	}

	ret = FUNC4(priv->clk);
	if (ret) {
		FUNC5(dev, "could not enable clock\n");
		return -EBUSY;
	}

	if (!FUNC12(dev->of_node, "bridge-enable", &enable)) {
		if (enable > 1) {
			FUNC7(dev, "invalid bridge-enable %u > 1\n", enable);
		} else {
			FUNC6(dev, "%s bridge\n",
				 (enable ? "enabling" : "disabling"));

			ret = FUNC2(priv, enable);
			if (ret)
				goto err;
		}
	}

	br = FUNC9(dev, priv->name,
				     &altera_hps2fpga_br_ops, priv);
	if (!br) {
		ret = -ENOMEM;
		goto err;
	}

	FUNC14(pdev, br);

	ret = FUNC10(br);
	if (ret)
		goto err;

	return 0;

err:
	FUNC3(priv->clk);

	return ret;
}