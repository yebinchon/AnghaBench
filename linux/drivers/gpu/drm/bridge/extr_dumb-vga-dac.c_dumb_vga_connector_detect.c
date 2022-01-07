
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dumb_vga {scalar_t__ ddc; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int connector_status_connected ;
 int connector_status_unknown ;
 struct dumb_vga* drm_connector_to_dumb_vga (struct drm_connector*) ;
 scalar_t__ drm_probe_ddc (scalar_t__) ;

__attribute__((used)) static enum drm_connector_status
dumb_vga_connector_detect(struct drm_connector *connector, bool force)
{
 struct dumb_vga *vga = drm_connector_to_dumb_vga(connector);







 if (vga->ddc && drm_probe_ddc(vga->ddc))
  return connector_status_connected;

 return connector_status_unknown;
}
