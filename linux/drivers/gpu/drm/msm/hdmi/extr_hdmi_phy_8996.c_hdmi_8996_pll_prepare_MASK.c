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
struct hdmi_pll_8996 {int dummy; } ;
struct hdmi_phy {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int HDMI_NUM_TX_CHANNEL ; 
 int /*<<< orphan*/  REG_HDMI_8996_PHY_CFG ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_SSC_EN_CENTER ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_SSC_PER1 ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_SSC_PER2 ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_SSC_STEP_SIZE1 ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_COM_SSC_STEP_SIZE2 ; 
 int /*<<< orphan*/  REG_HDMI_PHY_QSERDES_TX_LX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN ; 
 int FUNC0 (struct hdmi_phy*) ; 
 int FUNC1 (struct hdmi_pll_8996*) ; 
 int /*<<< orphan*/  FUNC2 (struct hdmi_phy*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hdmi_pll_8996*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hdmi_pll_8996*,int,int /*<<< orphan*/ ,int) ; 
 struct hdmi_pll_8996* FUNC5 (struct clk_hw*) ; 
 struct hdmi_phy* FUNC6 (struct hdmi_pll_8996*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct clk_hw *hw)
{
	struct hdmi_pll_8996 *pll = FUNC5(hw);
	struct hdmi_phy *phy = FUNC6(pll);
	int i, ret = 0;

	FUNC2(phy, REG_HDMI_8996_PHY_CFG, 0x1);
	FUNC7(100);

	FUNC2(phy, REG_HDMI_8996_PHY_CFG, 0x19);
	FUNC7(100);

	ret = FUNC1(pll);
	if (!ret)
		return ret;

	for (i = 0; i < HDMI_NUM_TX_CHANNEL; i++)
		FUNC4(pll, i,
			REG_HDMI_PHY_QSERDES_TX_LX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN,
			0x6F);

	/* Disable SSC */
	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_SSC_PER1, 0x0);
	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_SSC_PER2, 0x0);
	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_SSC_STEP_SIZE1, 0x0);
	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_SSC_STEP_SIZE2, 0x0);
	FUNC3(pll, REG_HDMI_PHY_QSERDES_COM_SSC_EN_CENTER, 0x2);

	ret = FUNC0(phy);
	if (!ret)
		return ret;

	/* Restart the retiming buffer */
	FUNC2(phy, REG_HDMI_8996_PHY_CFG, 0x18);
	FUNC7(1);
	FUNC2(phy, REG_HDMI_8996_PHY_CFG, 0x19);

	return 0;
}