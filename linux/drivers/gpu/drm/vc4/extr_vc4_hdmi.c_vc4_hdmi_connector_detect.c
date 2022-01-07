
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc4_dev {TYPE_1__* hdmi; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_2__ {int hpd_active_low; int cec_adap; int ddc; scalar_t__ hpd_gpio; } ;


 int HDMI_READ (int ) ;
 int VC4_HDMI_HOTPLUG ;
 int VC4_HDMI_HOTPLUG_CONNECTED ;
 int cec_phys_addr_invalidate (int ) ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 scalar_t__ drm_probe_ddc (int ) ;
 int gpio_get_value_cansleep (scalar_t__) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;

__attribute__((used)) static enum drm_connector_status
vc4_hdmi_connector_detect(struct drm_connector *connector, bool force)
{
 struct drm_device *dev = connector->dev;
 struct vc4_dev *vc4 = to_vc4_dev(dev);

 if (vc4->hdmi->hpd_gpio) {
  if (gpio_get_value_cansleep(vc4->hdmi->hpd_gpio) ^
      vc4->hdmi->hpd_active_low)
   return connector_status_connected;
  cec_phys_addr_invalidate(vc4->hdmi->cec_adap);
  return connector_status_disconnected;
 }

 if (drm_probe_ddc(vc4->hdmi->ddc))
  return connector_status_connected;

 if (HDMI_READ(VC4_HDMI_HOTPLUG) & VC4_HDMI_HOTPLUG_CONNECTED)
  return connector_status_connected;
 cec_phys_addr_invalidate(vc4->hdmi->cec_adap);
 return connector_status_disconnected;
}
