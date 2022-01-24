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
struct dw_hdmi {int mc_clkdis; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_FC_CH0PREAM ; 
 int /*<<< orphan*/  HDMI_FC_CH1PREAM ; 
 int /*<<< orphan*/  HDMI_FC_CH2PREAM ; 
 int /*<<< orphan*/  HDMI_FC_CTRLDUR ; 
 int /*<<< orphan*/  HDMI_FC_EXCTRLDUR ; 
 int /*<<< orphan*/  HDMI_FC_EXCTRLSPAC ; 
 int /*<<< orphan*/  HDMI_MC_CLKDIS ; 
 int HDMI_MC_CLKDIS_AUDCLK_DISABLE ; 
 int HDMI_MC_CLKDIS_CSCCLK_DISABLE ; 
 int HDMI_MC_CLKDIS_HDCPCLK_DISABLE ; 
 int HDMI_MC_CLKDIS_PIXELCLK_DISABLE ; 
 int HDMI_MC_CLKDIS_PREPCLK_DISABLE ; 
 int HDMI_MC_CLKDIS_TMDSCLK_DISABLE ; 
 int /*<<< orphan*/  HDMI_MC_FLOWCTRL ; 
 int HDMI_MC_FLOWCTRL_FEED_THROUGH_OFF_CSC_BYPASS ; 
 int HDMI_MC_FLOWCTRL_FEED_THROUGH_OFF_CSC_IN_PATH ; 
 int /*<<< orphan*/  FUNC0 (struct dw_hdmi*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dw_hdmi*) ; 

__attribute__((used)) static void FUNC2(struct dw_hdmi *hdmi)
{
	/* control period minimum duration */
	FUNC0(hdmi, 12, HDMI_FC_CTRLDUR);
	FUNC0(hdmi, 32, HDMI_FC_EXCTRLDUR);
	FUNC0(hdmi, 1, HDMI_FC_EXCTRLSPAC);

	/* Set to fill TMDS data channels */
	FUNC0(hdmi, 0x0B, HDMI_FC_CH0PREAM);
	FUNC0(hdmi, 0x16, HDMI_FC_CH1PREAM);
	FUNC0(hdmi, 0x21, HDMI_FC_CH2PREAM);

	/* Enable pixel clock and tmds data path */
	hdmi->mc_clkdis |= HDMI_MC_CLKDIS_HDCPCLK_DISABLE |
			   HDMI_MC_CLKDIS_CSCCLK_DISABLE |
			   HDMI_MC_CLKDIS_AUDCLK_DISABLE |
			   HDMI_MC_CLKDIS_PREPCLK_DISABLE |
			   HDMI_MC_CLKDIS_TMDSCLK_DISABLE;
	hdmi->mc_clkdis &= ~HDMI_MC_CLKDIS_PIXELCLK_DISABLE;
	FUNC0(hdmi, hdmi->mc_clkdis, HDMI_MC_CLKDIS);

	hdmi->mc_clkdis &= ~HDMI_MC_CLKDIS_TMDSCLK_DISABLE;
	FUNC0(hdmi, hdmi->mc_clkdis, HDMI_MC_CLKDIS);

	/* Enable csc path */
	if (FUNC1(hdmi)) {
		hdmi->mc_clkdis &= ~HDMI_MC_CLKDIS_CSCCLK_DISABLE;
		FUNC0(hdmi, hdmi->mc_clkdis, HDMI_MC_CLKDIS);
	}

	/* Enable color space conversion if needed */
	if (FUNC1(hdmi))
		FUNC0(hdmi, HDMI_MC_FLOWCTRL_FEED_THROUGH_OFF_CSC_IN_PATH,
			    HDMI_MC_FLOWCTRL);
	else
		FUNC0(hdmi, HDMI_MC_FLOWCTRL_FEED_THROUGH_OFF_CSC_BYPASS,
			    HDMI_MC_FLOWCTRL);
}