
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_phy {int dummy; } ;
struct hdmi_bridge {struct hdmi* hdmi; } ;
struct hdmi {int power_on; scalar_t__ hdcp_ctrl; int pixclock; scalar_t__ hdmi_mode; struct hdmi_phy* phy; } ;
struct drm_bridge {int dummy; } ;


 int DBG (char*) ;
 int msm_hdmi_audio_update (struct hdmi*) ;
 int msm_hdmi_config_avi_infoframe (struct hdmi*) ;
 int msm_hdmi_hdcp_on (scalar_t__) ;
 int msm_hdmi_phy_powerup (struct hdmi_phy*,int ) ;
 int msm_hdmi_phy_resource_enable (struct hdmi_phy*) ;
 int msm_hdmi_power_on (struct drm_bridge*) ;
 int msm_hdmi_set_mode (struct hdmi*,int) ;
 struct hdmi_bridge* to_hdmi_bridge (struct drm_bridge*) ;

__attribute__((used)) static void msm_hdmi_bridge_pre_enable(struct drm_bridge *bridge)
{
 struct hdmi_bridge *hdmi_bridge = to_hdmi_bridge(bridge);
 struct hdmi *hdmi = hdmi_bridge->hdmi;
 struct hdmi_phy *phy = hdmi->phy;

 DBG("power up");

 if (!hdmi->power_on) {
  msm_hdmi_phy_resource_enable(phy);
  msm_hdmi_power_on(bridge);
  hdmi->power_on = 1;
  if (hdmi->hdmi_mode) {
   msm_hdmi_config_avi_infoframe(hdmi);
   msm_hdmi_audio_update(hdmi);
  }
 }

 msm_hdmi_phy_powerup(phy, hdmi->pixclock);

 msm_hdmi_set_mode(hdmi, 1);

 if (hdmi->hdcp_ctrl)
  msm_hdmi_hdcp_on(hdmi->hdcp_ctrl);
}
