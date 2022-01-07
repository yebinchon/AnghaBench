
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_hdmi_connector {struct sti_hdmi* hdmi; } ;
struct sti_hdmi {int notifier; scalar_t__ hpd; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int CEC_PHYS_ADDR_INVALID ;
 int DRM_DEBUG_DRIVER (char*) ;
 int cec_notifier_set_phys_addr (int ,int ) ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 struct sti_hdmi_connector* to_sti_hdmi_connector (struct drm_connector*) ;

__attribute__((used)) static enum drm_connector_status
sti_hdmi_connector_detect(struct drm_connector *connector, bool force)
{
 struct sti_hdmi_connector *hdmi_connector
  = to_sti_hdmi_connector(connector);
 struct sti_hdmi *hdmi = hdmi_connector->hdmi;

 DRM_DEBUG_DRIVER("\n");

 if (hdmi->hpd) {
  DRM_DEBUG_DRIVER("hdmi cable connected\n");
  return connector_status_connected;
 }

 DRM_DEBUG_DRIVER("hdmi cable disconnected\n");
 cec_notifier_set_phys_addr(hdmi->notifier, CEC_PHYS_ADDR_INVALID);
 return connector_status_disconnected;
}
