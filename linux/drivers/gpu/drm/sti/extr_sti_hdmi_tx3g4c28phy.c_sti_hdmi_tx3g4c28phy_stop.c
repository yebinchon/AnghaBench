
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_hdmi {int event_received; int wait_event; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int DRM_ERROR (char*) ;
 int HDMI_SRZ_CFG ;
 int HDMI_SRZ_CFG_EN_BIASRES_DETECTION ;
 int HDMI_SRZ_CFG_EN_SINK_TERM_DETECTION ;
 int HDMI_SRZ_PLL_CFG ;
 int HDMI_STA ;
 int HDMI_STA_DLL_LCK ;
 int HDMI_TIMEOUT_PLL_LOCK ;
 int hdmi_read (struct sti_hdmi*,int ) ;
 int hdmi_write (struct sti_hdmi*,int,int ) ;
 int msecs_to_jiffies (int ) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static void sti_hdmi_tx3g4c28phy_stop(struct sti_hdmi *hdmi)
{
 int val = 0;

 DRM_DEBUG_DRIVER("\n");

 hdmi->event_received = 0;

 val = HDMI_SRZ_CFG_EN_SINK_TERM_DETECTION;
 val |= HDMI_SRZ_CFG_EN_BIASRES_DETECTION;

 hdmi_write(hdmi, val, HDMI_SRZ_CFG);
 hdmi_write(hdmi, 0, HDMI_SRZ_PLL_CFG);


 wait_event_interruptible_timeout(hdmi->wait_event,
      hdmi->event_received == 1,
      msecs_to_jiffies
      (HDMI_TIMEOUT_PLL_LOCK));

 if (hdmi_read(hdmi, HDMI_STA) & HDMI_STA_DLL_LCK)
  DRM_ERROR("hdmi phy pll not well disabled\n");
}
