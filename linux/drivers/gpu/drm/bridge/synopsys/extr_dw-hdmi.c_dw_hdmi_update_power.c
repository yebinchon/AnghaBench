
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi {int force; scalar_t__ bridge_is_on; scalar_t__ rxsense; scalar_t__ disabled; } ;


 int DRM_FORCE_OFF ;
 int DRM_FORCE_ON ;
 int DRM_FORCE_UNSPECIFIED ;
 int dw_hdmi_poweroff (struct dw_hdmi*) ;
 int dw_hdmi_poweron (struct dw_hdmi*) ;

__attribute__((used)) static void dw_hdmi_update_power(struct dw_hdmi *hdmi)
{
 int force = hdmi->force;

 if (hdmi->disabled) {
  force = DRM_FORCE_OFF;
 } else if (force == DRM_FORCE_UNSPECIFIED) {
  if (hdmi->rxsense)
   force = DRM_FORCE_ON;
  else
   force = DRM_FORCE_OFF;
 }

 if (force == DRM_FORCE_OFF) {
  if (hdmi->bridge_is_on)
   dw_hdmi_poweroff(hdmi);
 } else {
  if (!hdmi->bridge_is_on)
   dw_hdmi_poweron(hdmi);
 }
}
