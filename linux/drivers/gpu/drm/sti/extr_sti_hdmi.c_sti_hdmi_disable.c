
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sti_hdmi {int enabled; int notifier; int clk_pix; int clk_tmds; int clk_phy; TYPE_1__* phy_ops; } ;
struct drm_bridge {struct sti_hdmi* driver_private; } ;
struct TYPE_2__ {int (* stop ) (struct sti_hdmi*) ;} ;


 int CEC_PHYS_ADDR_INVALID ;
 int DRM_DEBUG_DRIVER (char*) ;
 int HDMI_CFG ;
 int HDMI_CFG_DEVICE_EN ;
 int HDMI_DFLT_CHL0_DAT ;
 int HDMI_DFLT_CHL1_DAT ;
 int HDMI_DFLT_CHL2_DAT ;
 int HDMI_IFRAME_SLOT_AUDIO ;
 int HDMI_IFRAME_SLOT_AVI ;
 int HDMI_IFRAME_SLOT_VENDOR ;
 int HDMI_INT_CLR ;
 int cec_notifier_set_phys_addr (int ,int ) ;
 int clk_disable_unprepare (int ) ;
 int hdmi_infoframe_reset (struct sti_hdmi*,int ) ;
 int hdmi_read (struct sti_hdmi*,int ) ;
 int hdmi_write (struct sti_hdmi*,int,int ) ;
 int stub1 (struct sti_hdmi*) ;

__attribute__((used)) static void sti_hdmi_disable(struct drm_bridge *bridge)
{
 struct sti_hdmi *hdmi = bridge->driver_private;

 u32 val = hdmi_read(hdmi, HDMI_CFG);

 if (!hdmi->enabled)
  return;

 DRM_DEBUG_DRIVER("\n");


 val &= ~HDMI_CFG_DEVICE_EN;
 hdmi_write(hdmi, val, HDMI_CFG);

 hdmi_write(hdmi, 0xffffffff, HDMI_INT_CLR);


 hdmi->phy_ops->stop(hdmi);


 hdmi_infoframe_reset(hdmi, HDMI_IFRAME_SLOT_AVI);
 hdmi_infoframe_reset(hdmi, HDMI_IFRAME_SLOT_AUDIO);
 hdmi_infoframe_reset(hdmi, HDMI_IFRAME_SLOT_VENDOR);


 hdmi_write(hdmi, 0x0000, HDMI_DFLT_CHL0_DAT);
 hdmi_write(hdmi, 0x0000, HDMI_DFLT_CHL1_DAT);
 hdmi_write(hdmi, 0x0060, HDMI_DFLT_CHL2_DAT);


 clk_disable_unprepare(hdmi->clk_phy);
 clk_disable_unprepare(hdmi->clk_tmds);
 clk_disable_unprepare(hdmi->clk_pix);

 hdmi->enabled = 0;

 cec_notifier_set_phys_addr(hdmi->notifier, CEC_PHYS_ADDR_INVALID);
}
