
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_hdmi {int dummy; } ;


 int CLKPWD ;
 int CLKPWD_PDIDCK ;
 int FUNC_HDMI_EN ;
 int FUNC_SEL ;
 int HDMICTL4 ;
 int INTR1_MASK ;
 int INTR1_MONITOR_DETECT ;
 int P2T_CTRL ;
 int P2T_DC_PKT_EN ;
 int TEST_TXCTRL ;
 int TEST_TXCTRL_HDMI_MODE ;
 int hdmi_writeb (struct zx_hdmi*,int ,int) ;
 int hdmi_writeb_mask (struct zx_hdmi*,int ,int ,int ) ;
 int zx_hdmi_phy_start (struct zx_hdmi*) ;

__attribute__((used)) static void zx_hdmi_hw_enable(struct zx_hdmi *hdmi)
{

 hdmi_writeb_mask(hdmi, CLKPWD, CLKPWD_PDIDCK, CLKPWD_PDIDCK);


 hdmi_writeb_mask(hdmi, FUNC_SEL, FUNC_HDMI_EN, FUNC_HDMI_EN);


 hdmi_writeb_mask(hdmi, P2T_CTRL, P2T_DC_PKT_EN, P2T_DC_PKT_EN);


 hdmi_writeb_mask(hdmi, TEST_TXCTRL, TEST_TXCTRL_HDMI_MODE,
    TEST_TXCTRL_HDMI_MODE);


 hdmi_writeb(hdmi, HDMICTL4, 0x3);


 hdmi_writeb_mask(hdmi, INTR1_MASK, INTR1_MONITOR_DETECT,
    INTR1_MONITOR_DETECT);


 zx_hdmi_phy_start(hdmi);
}
