
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pll; } ;
struct omap_hdmi {TYPE_1__ pll; int wp; int output; } ;


 int HDMI_PHYPWRCMD_OFF ;
 int dss_mgr_disable (int *) ;
 int dss_pll_disable (int *) ;
 int hdmi_power_off_core (struct omap_hdmi*) ;
 int hdmi_wp_clear_irqenable (int *,int) ;
 int hdmi_wp_set_phy_pwr (int *,int ) ;
 int hdmi_wp_video_stop (int *) ;

__attribute__((used)) static void hdmi_power_off_full(struct omap_hdmi *hdmi)
{
 hdmi_wp_clear_irqenable(&hdmi->wp, 0xffffffff);

 hdmi_wp_video_stop(&hdmi->wp);

 dss_mgr_disable(&hdmi->output);

 hdmi_wp_set_phy_pwr(&hdmi->wp, HDMI_PHYPWRCMD_OFF);

 dss_pll_disable(&hdmi->pll.pll);

 hdmi_power_off_core(hdmi);
}
