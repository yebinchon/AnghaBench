
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_hdmi {int dummy; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int TPI_HPD_CONNECTION ;
 int TPI_HPD_RSEN ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 int hdmi_readb (struct zx_hdmi*,int ) ;
 struct zx_hdmi* to_zx_hdmi (struct drm_connector*) ;

__attribute__((used)) static enum drm_connector_status
zx_hdmi_connector_detect(struct drm_connector *connector, bool force)
{
 struct zx_hdmi *hdmi = to_zx_hdmi(connector);

 return (hdmi_readb(hdmi, TPI_HPD_RSEN) & TPI_HPD_CONNECTION) ?
  connector_status_connected : connector_status_disconnected;
}
