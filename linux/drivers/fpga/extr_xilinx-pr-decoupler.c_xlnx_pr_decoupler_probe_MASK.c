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
struct xlnx_pr_decoupler_data {int /*<<< orphan*/  clk; int /*<<< orphan*/  io_base; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct fpga_bridge {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 struct fpga_bridge* FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,struct xlnx_pr_decoupler_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct resource*) ; 
 struct xlnx_pr_decoupler_data* FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct fpga_bridge*) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct fpga_bridge*) ; 
 int /*<<< orphan*/  xlnx_pr_decoupler_br_ops ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct xlnx_pr_decoupler_data *priv;
	struct fpga_bridge *br;
	int err;
	struct resource *res;

	priv = FUNC9(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	res = FUNC11(pdev, IORESOURCE_MEM, 0);
	priv->io_base = FUNC8(&pdev->dev, res);
	if (FUNC0(priv->io_base))
		return FUNC1(priv->io_base);

	priv->clk = FUNC6(&pdev->dev, "aclk");
	if (FUNC0(priv->clk)) {
		FUNC5(&pdev->dev, "input clock not found\n");
		return FUNC1(priv->clk);
	}

	err = FUNC3(priv->clk);
	if (err) {
		FUNC5(&pdev->dev, "unable to enable clock\n");
		return err;
	}

	FUNC2(priv->clk);

	br = FUNC7(&pdev->dev, "Xilinx PR Decoupler",
				     &xlnx_pr_decoupler_br_ops, priv);
	if (!br) {
		err = -ENOMEM;
		goto err_clk;
	}

	FUNC12(pdev, br);

	err = FUNC10(br);
	if (err) {
		FUNC5(&pdev->dev, "unable to register Xilinx PR Decoupler");
		goto err_clk;
	}

	return 0;

err_clk:
	FUNC4(priv->clk);

	return err;
}