
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sti_hdmi {int event_received; int clk_audio; int wait_event; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int DRM_INFO (char*) ;
 int HDMI_CFG ;
 int HDMI_CFG_SW_RST_EN ;
 int HDMI_STA ;
 int HDMI_STA_SW_RST ;
 int HDMI_TIMEOUT_SWRESET ;
 int clk_disable_unprepare (int ) ;
 scalar_t__ clk_prepare_enable (int ) ;
 int hdmi_read (struct sti_hdmi*,int ) ;
 int hdmi_write (struct sti_hdmi*,int,int ) ;
 int msecs_to_jiffies (int ) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static void hdmi_swreset(struct sti_hdmi *hdmi)
{
 u32 val;

 DRM_DEBUG_DRIVER("\n");


 if (clk_prepare_enable(hdmi->clk_audio))
  DRM_INFO("Failed to prepare/enable hdmi_audio clk\n");


 hdmi->event_received = 0;

 val = hdmi_read(hdmi, HDMI_CFG);
 val |= HDMI_CFG_SW_RST_EN;
 hdmi_write(hdmi, val, HDMI_CFG);


 wait_event_interruptible_timeout(hdmi->wait_event,
      hdmi->event_received,
      msecs_to_jiffies
      (HDMI_TIMEOUT_SWRESET));





 if ((hdmi_read(hdmi, HDMI_STA) & HDMI_STA_SW_RST) == 0)
  DRM_DEBUG_DRIVER("Warning: HDMI sw reset timeout occurs\n");

 val = hdmi_read(hdmi, HDMI_CFG);
 val &= ~HDMI_CFG_SW_RST_EN;
 hdmi_write(hdmi, val, HDMI_CFG);


 clk_disable_unprepare(hdmi->clk_audio);
}
