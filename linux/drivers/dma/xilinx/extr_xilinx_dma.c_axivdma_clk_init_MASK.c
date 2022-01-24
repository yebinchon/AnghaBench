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
			    struct clk **tx_clk, struct clk **txs_clk,
			    struct clk **rx_clk, struct clk **rxs_clk)
{
	int err;

	*axi_clk = FUNC5(&pdev->dev, "s_axi_lite_aclk");
	if (FUNC0(*axi_clk)) {
		err = FUNC1(*axi_clk);
		FUNC4(&pdev->dev, "failed to get axi_aclk (%d)\n", err);
		return err;
	}

	*tx_clk = FUNC5(&pdev->dev, "m_axi_mm2s_aclk");
	if (FUNC0(*tx_clk))
		*tx_clk = NULL;

	*txs_clk = FUNC5(&pdev->dev, "m_axis_mm2s_aclk");
	if (FUNC0(*txs_clk))
		*txs_clk = NULL;

	*rx_clk = FUNC5(&pdev->dev, "m_axi_s2mm_aclk");
	if (FUNC0(*rx_clk))
		*rx_clk = NULL;

	*rxs_clk = FUNC5(&pdev->dev, "s_axis_s2mm_aclk");
	if (FUNC0(*rxs_clk))
		*rxs_clk = NULL;

	err = FUNC3(*axi_clk);
	if (err) {
		FUNC4(&pdev->dev, "failed to enable axi_clk (%d)\n", err);
		return err;
	}

	err = FUNC3(*tx_clk);
	if (err) {
		FUNC4(&pdev->dev, "failed to enable tx_clk (%d)\n", err);
		goto err_disable_axiclk;
	}

	err = FUNC3(*txs_clk);
	if (err) {
		FUNC4(&pdev->dev, "failed to enable txs_clk (%d)\n", err);
		goto err_disable_txclk;
	}

	err = FUNC3(*rx_clk);
	if (err) {
		FUNC4(&pdev->dev, "failed to enable rx_clk (%d)\n", err);
		goto err_disable_txsclk;
	}

	err = FUNC3(*rxs_clk);
	if (err) {
		FUNC4(&pdev->dev, "failed to enable rxs_clk (%d)\n", err);
		goto err_disable_rxclk;
	}

	return 0;

err_disable_rxclk:
	FUNC2(*rx_clk);
err_disable_txsclk:
	FUNC2(*txs_clk);
err_disable_txclk:
	FUNC2(*tx_clk);
err_disable_axiclk:
	FUNC2(*axi_clk);

	return err;
}