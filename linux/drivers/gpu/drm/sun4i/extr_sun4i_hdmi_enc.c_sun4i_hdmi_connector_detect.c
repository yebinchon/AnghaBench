
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_hdmi {int cec_adap; scalar_t__ base; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 unsigned long SUN4I_HDMI_HPD_HIGH ;
 scalar_t__ SUN4I_HDMI_HPD_REG ;
 int cec_phys_addr_invalidate (int ) ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 struct sun4i_hdmi* drm_connector_to_sun4i_hdmi (struct drm_connector*) ;
 scalar_t__ readl_poll_timeout (scalar_t__,unsigned long,unsigned long,int ,int) ;

__attribute__((used)) static enum drm_connector_status
sun4i_hdmi_connector_detect(struct drm_connector *connector, bool force)
{
 struct sun4i_hdmi *hdmi = drm_connector_to_sun4i_hdmi(connector);
 unsigned long reg;

 if (readl_poll_timeout(hdmi->base + SUN4I_HDMI_HPD_REG, reg,
          reg & SUN4I_HDMI_HPD_HIGH,
          0, 500000)) {
  cec_phys_addr_invalidate(hdmi->cec_adap);
  return connector_status_disconnected;
 }

 return connector_status_connected;
}
