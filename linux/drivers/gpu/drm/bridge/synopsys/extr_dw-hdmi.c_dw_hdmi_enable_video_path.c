
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi {int mc_clkdis; } ;


 int HDMI_FC_CH0PREAM ;
 int HDMI_FC_CH1PREAM ;
 int HDMI_FC_CH2PREAM ;
 int HDMI_FC_CTRLDUR ;
 int HDMI_FC_EXCTRLDUR ;
 int HDMI_FC_EXCTRLSPAC ;
 int HDMI_MC_CLKDIS ;
 int HDMI_MC_CLKDIS_AUDCLK_DISABLE ;
 int HDMI_MC_CLKDIS_CSCCLK_DISABLE ;
 int HDMI_MC_CLKDIS_HDCPCLK_DISABLE ;
 int HDMI_MC_CLKDIS_PIXELCLK_DISABLE ;
 int HDMI_MC_CLKDIS_PREPCLK_DISABLE ;
 int HDMI_MC_CLKDIS_TMDSCLK_DISABLE ;
 int HDMI_MC_FLOWCTRL ;
 int HDMI_MC_FLOWCTRL_FEED_THROUGH_OFF_CSC_BYPASS ;
 int HDMI_MC_FLOWCTRL_FEED_THROUGH_OFF_CSC_IN_PATH ;
 int hdmi_writeb (struct dw_hdmi*,int,int ) ;
 scalar_t__ is_color_space_conversion (struct dw_hdmi*) ;

__attribute__((used)) static void dw_hdmi_enable_video_path(struct dw_hdmi *hdmi)
{

 hdmi_writeb(hdmi, 12, HDMI_FC_CTRLDUR);
 hdmi_writeb(hdmi, 32, HDMI_FC_EXCTRLDUR);
 hdmi_writeb(hdmi, 1, HDMI_FC_EXCTRLSPAC);


 hdmi_writeb(hdmi, 0x0B, HDMI_FC_CH0PREAM);
 hdmi_writeb(hdmi, 0x16, HDMI_FC_CH1PREAM);
 hdmi_writeb(hdmi, 0x21, HDMI_FC_CH2PREAM);


 hdmi->mc_clkdis |= HDMI_MC_CLKDIS_HDCPCLK_DISABLE |
      HDMI_MC_CLKDIS_CSCCLK_DISABLE |
      HDMI_MC_CLKDIS_AUDCLK_DISABLE |
      HDMI_MC_CLKDIS_PREPCLK_DISABLE |
      HDMI_MC_CLKDIS_TMDSCLK_DISABLE;
 hdmi->mc_clkdis &= ~HDMI_MC_CLKDIS_PIXELCLK_DISABLE;
 hdmi_writeb(hdmi, hdmi->mc_clkdis, HDMI_MC_CLKDIS);

 hdmi->mc_clkdis &= ~HDMI_MC_CLKDIS_TMDSCLK_DISABLE;
 hdmi_writeb(hdmi, hdmi->mc_clkdis, HDMI_MC_CLKDIS);


 if (is_color_space_conversion(hdmi)) {
  hdmi->mc_clkdis &= ~HDMI_MC_CLKDIS_CSCCLK_DISABLE;
  hdmi_writeb(hdmi, hdmi->mc_clkdis, HDMI_MC_CLKDIS);
 }


 if (is_color_space_conversion(hdmi))
  hdmi_writeb(hdmi, HDMI_MC_FLOWCTRL_FEED_THROUGH_OFF_CSC_IN_PATH,
       HDMI_MC_FLOWCTRL);
 else
  hdmi_writeb(hdmi, HDMI_MC_FLOWCTRL_FEED_THROUGH_OFF_CSC_BYPASS,
       HDMI_MC_FLOWCTRL);
}
