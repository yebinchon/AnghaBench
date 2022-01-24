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
struct mtk_hdmi_phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_CON0 ; 
 int /*<<< orphan*/  HDMI_CON2 ; 
 int /*<<< orphan*/  HDMI_CON6 ; 
 int /*<<< orphan*/  HDMI_CON7 ; 
 int /*<<< orphan*/  RG_HDMITX_EN_DRV_MASK ; 
 int /*<<< orphan*/  RG_HDMITX_EN_MBIAS ; 
 int /*<<< orphan*/  RG_HDMITX_EN_PRED_MASK ; 
 int /*<<< orphan*/  RG_HDMITX_EN_SER_MASK ; 
 int /*<<< orphan*/  RG_HDMITX_EN_SLDO_MASK ; 
 int /*<<< orphan*/  RG_HDMITX_EN_TX_CKLDO ; 
 int /*<<< orphan*/  RG_HDMITX_MBIAS_LPF_EN ; 
 int /*<<< orphan*/  RG_HTPLL_AUTOK_EN ; 
 int /*<<< orphan*/  RG_HTPLL_EN ; 
 int /*<<< orphan*/  RG_HTPLL_POSDIV_MASK ; 
 int /*<<< orphan*/  RG_HTPLL_RLH_EN ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_hdmi_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_hdmi_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct mtk_hdmi_phy *hdmi_phy)
{
	FUNC1(hdmi_phy, HDMI_CON7, RG_HTPLL_AUTOK_EN);
	FUNC0(hdmi_phy, HDMI_CON6, RG_HTPLL_RLH_EN);
	FUNC1(hdmi_phy, HDMI_CON6, RG_HTPLL_POSDIV_MASK);
	FUNC1(hdmi_phy, HDMI_CON2, RG_HDMITX_EN_MBIAS);
	FUNC2(80, 100);
	FUNC1(hdmi_phy, HDMI_CON6, RG_HTPLL_EN);
	FUNC1(hdmi_phy, HDMI_CON2, RG_HDMITX_EN_TX_CKLDO);
	FUNC1(hdmi_phy, HDMI_CON0, RG_HDMITX_EN_SLDO_MASK);
	FUNC2(80, 100);
	FUNC1(hdmi_phy, HDMI_CON2, RG_HDMITX_MBIAS_LPF_EN);
	FUNC1(hdmi_phy, HDMI_CON0, RG_HDMITX_EN_SER_MASK);
	FUNC1(hdmi_phy, HDMI_CON0, RG_HDMITX_EN_PRED_MASK);
	FUNC1(hdmi_phy, HDMI_CON0, RG_HDMITX_EN_DRV_MASK);
	FUNC2(80, 100);
}