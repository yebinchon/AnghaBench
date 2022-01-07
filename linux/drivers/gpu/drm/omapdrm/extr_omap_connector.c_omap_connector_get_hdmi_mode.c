
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_connector {int hdmi_mode; } ;
struct drm_connector {int dummy; } ;


 struct omap_connector* to_omap_connector (struct drm_connector*) ;

bool omap_connector_get_hdmi_mode(struct drm_connector *connector)
{
 struct omap_connector *omap_connector = to_omap_connector(connector);

 return omap_connector->hdmi_mode;
}
