
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_hdmi {int dummy; } ;


 int CLKPWD ;
 int CLKPWD_PDIDCK ;
 int FUNC_HDMI_EN ;
 int FUNC_SEL ;
 int INTR1_MASK ;
 int INTR1_MONITOR_DETECT ;
 int P2T_CTRL ;
 int P2T_DC_PKT_EN ;
 int hdmi_writeb_mask (struct zx_hdmi*,int ,int ,int ) ;

__attribute__((used)) static void zx_hdmi_hw_disable(struct zx_hdmi *hdmi)
{

 hdmi_writeb_mask(hdmi, INTR1_MASK, INTR1_MONITOR_DETECT, 0);


 hdmi_writeb_mask(hdmi, P2T_CTRL, P2T_DC_PKT_EN, P2T_DC_PKT_EN);


 hdmi_writeb_mask(hdmi, FUNC_SEL, FUNC_HDMI_EN, 0);


 hdmi_writeb_mask(hdmi, CLKPWD, CLKPWD_PDIDCK, 0);
}
