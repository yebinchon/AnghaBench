
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_context {int notifier; int hpd_gpio; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int CEC_PHYS_ADDR_INVALID ;
 int cec_notifier_set_phys_addr (int ,int ) ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 struct hdmi_context* connector_to_hdmi (struct drm_connector*) ;
 scalar_t__ gpiod_get_value (int ) ;

__attribute__((used)) static enum drm_connector_status hdmi_detect(struct drm_connector *connector,
    bool force)
{
 struct hdmi_context *hdata = connector_to_hdmi(connector);

 if (gpiod_get_value(hdata->hpd_gpio))
  return connector_status_connected;

 cec_notifier_set_phys_addr(hdata->notifier, CEC_PHYS_ADDR_INVALID);
 return connector_status_disconnected;
}
