
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi {int mc_clkdis; } ;


 int HDMI_MC_CLKDIS ;
 int HDMI_MC_CLKDIS_AUDCLK_DISABLE ;
 int hdmi_writeb (struct dw_hdmi*,int ,int ) ;

__attribute__((used)) static void hdmi_enable_audio_clk(struct dw_hdmi *hdmi, bool enable)
{
 if (enable)
  hdmi->mc_clkdis &= ~HDMI_MC_CLKDIS_AUDCLK_DISABLE;
 else
  hdmi->mc_clkdis |= HDMI_MC_CLKDIS_AUDCLK_DISABLE;
 hdmi_writeb(hdmi, hdmi->mc_clkdis, HDMI_MC_CLKDIS);
}
