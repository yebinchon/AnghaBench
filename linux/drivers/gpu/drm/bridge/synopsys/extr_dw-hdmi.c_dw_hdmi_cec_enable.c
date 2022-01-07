
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi {int mutex; int mc_clkdis; } ;


 int HDMI_MC_CLKDIS ;
 int HDMI_MC_CLKDIS_CECCLK_DISABLE ;
 int hdmi_writeb (struct dw_hdmi*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void dw_hdmi_cec_enable(struct dw_hdmi *hdmi)
{
 mutex_lock(&hdmi->mutex);
 hdmi->mc_clkdis &= ~HDMI_MC_CLKDIS_CECCLK_DISABLE;
 hdmi_writeb(hdmi, hdmi->mc_clkdis, HDMI_MC_CLKDIS);
 mutex_unlock(&hdmi->mutex);
}
