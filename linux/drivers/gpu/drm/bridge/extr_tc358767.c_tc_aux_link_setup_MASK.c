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
struct tc_data {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int AUX_RX_FILTER_EN ; 
 int BGREN ; 
 int /*<<< orphan*/  DP0_AUXCFG1 ; 
 int /*<<< orphan*/  DP0_PLLCTRL ; 
 int /*<<< orphan*/  DP1_PLLCTRL ; 
 int /*<<< orphan*/  DP_PHY_CTRL ; 
 int ETIMEDOUT ; 
 int PHY_A0_EN ; 
 int /*<<< orphan*/  PHY_RDY ; 
 int PWR_SW_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct tc_data*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct tc_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (struct tc_data*) ; 

__attribute__((used)) static int FUNC5(struct tc_data *tc)
{
	int ret;
	u32 dp0_auxcfg1;

	/* Setup DP-PHY / PLL */
	ret = FUNC4(tc);
	if (ret)
		goto err;

	ret = FUNC1(tc->regmap, DP_PHY_CTRL,
			   BGREN | PWR_SW_EN | PHY_A0_EN);
	if (ret)
		goto err;
	/*
	 * Initially PLLs are in bypass. Force PLL parameter update,
	 * disable PLL bypass, enable PLL
	 */
	ret = FUNC2(tc, DP0_PLLCTRL);
	if (ret)
		goto err;

	ret = FUNC2(tc, DP1_PLLCTRL);
	if (ret)
		goto err;

	ret = FUNC3(tc, DP_PHY_CTRL, PHY_RDY, PHY_RDY, 1, 1000);
	if (ret == -ETIMEDOUT) {
		FUNC0(tc->dev, "Timeout waiting for PHY to become ready");
		return ret;
	} else if (ret) {
		goto err;
	}

	/* Setup AUX link */
	dp0_auxcfg1  = AUX_RX_FILTER_EN;
	dp0_auxcfg1 |= 0x06 << 8; /* Aux Bit Period Calculator Threshold */
	dp0_auxcfg1 |= 0x3f << 0; /* Aux Response Timeout Timer */

	ret = FUNC1(tc->regmap, DP0_AUXCFG1, dp0_auxcfg1);
	if (ret)
		goto err;

	return 0;
err:
	FUNC0(tc->dev, "tc_aux_link_setup failed: %d\n", ret);
	return ret;
}