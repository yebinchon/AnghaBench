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
struct sun8i_hdmi_phy {unsigned int rcal; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDS0 ; 
 int SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDS1 ; 
 int SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDS2 ; 
 int SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDSCLK ; 
 int SUN8I_HDMI_PHY_ANA_CFG1_CKEN ; 
 int SUN8I_HDMI_PHY_ANA_CFG1_ENBI ; 
 int SUN8I_HDMI_PHY_ANA_CFG1_ENCALOG ; 
 int SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDS0 ; 
 int SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDS1 ; 
 int SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDS2 ; 
 int SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDSCLK ; 
 int SUN8I_HDMI_PHY_ANA_CFG1_ENRCAL ; 
 int SUN8I_HDMI_PHY_ANA_CFG1_ENVBS ; 
 int SUN8I_HDMI_PHY_ANA_CFG1_LDOEN ; 
 int /*<<< orphan*/  SUN8I_HDMI_PHY_ANA_CFG1_REG ; 
 int SUN8I_HDMI_PHY_ANA_CFG1_TMDSCLK_EN ; 
 int /*<<< orphan*/  SUN8I_HDMI_PHY_ANA_CFG3_REG ; 
 int SUN8I_HDMI_PHY_ANA_CFG3_SCLEN ; 
 int SUN8I_HDMI_PHY_ANA_CFG3_SDAEN ; 
 unsigned int SUN8I_HDMI_PHY_ANA_STS_RCALEND2D ; 
 unsigned int SUN8I_HDMI_PHY_ANA_STS_RCAL_MASK ; 
 int /*<<< orphan*/  SUN8I_HDMI_PHY_ANA_STS_REG ; 
 int /*<<< orphan*/  SUN8I_HDMI_PHY_CEC_REG ; 
 int SUN8I_HDMI_PHY_PLL_CFG1_CKIN_SEL_MSK ; 
 int /*<<< orphan*/  SUN8I_HDMI_PHY_PLL_CFG1_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sun8i_hdmi_phy*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static void FUNC7(struct sun8i_hdmi_phy *phy)
{
	unsigned int val;

	FUNC4(phy);

	FUNC3(phy->regs, SUN8I_HDMI_PHY_ANA_CFG1_REG, 0);
	FUNC2(phy->regs, SUN8I_HDMI_PHY_ANA_CFG1_REG,
			   SUN8I_HDMI_PHY_ANA_CFG1_ENBI,
			   SUN8I_HDMI_PHY_ANA_CFG1_ENBI);
	FUNC5(5);
	FUNC2(phy->regs, SUN8I_HDMI_PHY_ANA_CFG1_REG,
			   SUN8I_HDMI_PHY_ANA_CFG1_TMDSCLK_EN,
			   SUN8I_HDMI_PHY_ANA_CFG1_TMDSCLK_EN);
	FUNC2(phy->regs, SUN8I_HDMI_PHY_ANA_CFG1_REG,
			   SUN8I_HDMI_PHY_ANA_CFG1_ENVBS,
			   SUN8I_HDMI_PHY_ANA_CFG1_ENVBS);
	FUNC6(10, 20);
	FUNC2(phy->regs, SUN8I_HDMI_PHY_ANA_CFG1_REG,
			   SUN8I_HDMI_PHY_ANA_CFG1_LDOEN,
			   SUN8I_HDMI_PHY_ANA_CFG1_LDOEN);
	FUNC5(5);
	FUNC2(phy->regs, SUN8I_HDMI_PHY_ANA_CFG1_REG,
			   SUN8I_HDMI_PHY_ANA_CFG1_CKEN,
			   SUN8I_HDMI_PHY_ANA_CFG1_CKEN);
	FUNC6(40, 100);
	FUNC2(phy->regs, SUN8I_HDMI_PHY_ANA_CFG1_REG,
			   SUN8I_HDMI_PHY_ANA_CFG1_ENRCAL,
			   SUN8I_HDMI_PHY_ANA_CFG1_ENRCAL);
	FUNC6(100, 200);
	FUNC2(phy->regs, SUN8I_HDMI_PHY_ANA_CFG1_REG,
			   SUN8I_HDMI_PHY_ANA_CFG1_ENCALOG,
			   SUN8I_HDMI_PHY_ANA_CFG1_ENCALOG);
	FUNC2(phy->regs, SUN8I_HDMI_PHY_ANA_CFG1_REG,
			   SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDS0 |
			   SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDS1 |
			   SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDS2,
			   SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDS0 |
			   SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDS1 |
			   SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDS2);

	/* wait for calibration to finish */
	FUNC1(phy->regs, SUN8I_HDMI_PHY_ANA_STS_REG, val,
				 (val & SUN8I_HDMI_PHY_ANA_STS_RCALEND2D),
				 100, 2000);

	FUNC2(phy->regs, SUN8I_HDMI_PHY_ANA_CFG1_REG,
			   SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDSCLK,
			   SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDSCLK);
	FUNC2(phy->regs, SUN8I_HDMI_PHY_ANA_CFG1_REG,
			   SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDS0 |
			   SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDS1 |
			   SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDS2 |
			   SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDSCLK,
			   SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDS0 |
			   SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDS1 |
			   SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDS2 |
			   SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDSCLK);

	/* enable DDC communication */
	FUNC2(phy->regs, SUN8I_HDMI_PHY_ANA_CFG3_REG,
			   SUN8I_HDMI_PHY_ANA_CFG3_SCLEN |
			   SUN8I_HDMI_PHY_ANA_CFG3_SDAEN,
			   SUN8I_HDMI_PHY_ANA_CFG3_SCLEN |
			   SUN8I_HDMI_PHY_ANA_CFG3_SDAEN);

	/* reset PHY PLL clock parent */
	FUNC2(phy->regs, SUN8I_HDMI_PHY_PLL_CFG1_REG,
			   SUN8I_HDMI_PHY_PLL_CFG1_CKIN_SEL_MSK, 0);

	/* set HW control of CEC pins */
	FUNC3(phy->regs, SUN8I_HDMI_PHY_CEC_REG, 0);

	/* read calibration data */
	FUNC0(phy->regs, SUN8I_HDMI_PHY_ANA_STS_REG, &val);
	phy->rcal = (val & SUN8I_HDMI_PHY_ANA_STS_RCAL_MASK) >> 2;
}