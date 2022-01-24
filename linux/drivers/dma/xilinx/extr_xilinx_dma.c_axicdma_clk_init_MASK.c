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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 int FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 struct clk* FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev, struct clk **axi_clk,
			    struct clk **dev_clk, struct clk **tmp_clk,
			    struct clk **tmp1_clk, struct clk **tmp2_clk)
{
	int err;

	*tmp_clk = NULL;
	*tmp1_clk = NULL;
	*tmp2_clk = NULL;

	*axi_clk = FUNC5(&pdev->dev, "s_axi_lite_aclk");
	if (FUNC0(*axi_clk)) {
		err = FUNC1(*axi_clk);
		FUNC4(&pdev->dev, "failed to get axi_clk (%d)\n", err);
		return err;
	}

	*dev_clk = FUNC5(&pdev->dev, "m_axi_aclk");
	if (FUNC0(*dev_clk)) {
		err = FUNC1(*dev_clk);
		FUNC4(&pdev->dev, "failed to get dev_clk (%d)\n", err);
		return err;
	}

	err = FUNC3(*axi_clk);
	if (err) {
		FUNC4(&pdev->dev, "failed to enable axi_clk (%d)\n", err);
		return err;
	}

	err = FUNC3(*dev_clk);
	if (err) {
		FUNC4(&pdev->dev, "failed to enable dev_clk (%d)\n", err);
		goto err_disable_axiclk;
	}

	return 0;

err_disable_axiclk:
	FUNC2(*axi_clk);

	return err;
}