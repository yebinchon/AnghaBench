
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {int type; } ;
typedef enum omap_display_type { ____Placeholder_omap_display_type } omap_display_type ;


 int DRM_MODE_CONNECTOR_DPI ;
 int DRM_MODE_CONNECTOR_DSI ;
 int DRM_MODE_CONNECTOR_DVID ;
 int DRM_MODE_CONNECTOR_HDMIA ;
 int DRM_MODE_CONNECTOR_LVDS ;
 int DRM_MODE_CONNECTOR_SVIDEO ;
 int DRM_MODE_CONNECTOR_Unknown ;







 int omapdss_device_put (struct omap_dss_device*) ;
 struct omap_dss_device* omapdss_display_get (struct omap_dss_device*) ;

__attribute__((used)) static int omap_connector_get_type(struct omap_dss_device *output)
{
 struct omap_dss_device *display;
 enum omap_display_type type;

 display = omapdss_display_get(output);
 type = display->type;
 omapdss_device_put(display);

 switch (type) {
 case 130:
  return DRM_MODE_CONNECTOR_HDMIA;
 case 131:
  return DRM_MODE_CONNECTOR_DVID;
 case 132:
  return DRM_MODE_CONNECTOR_DSI;
 case 133:
 case 134:
  return DRM_MODE_CONNECTOR_DPI;
 case 128:

  return DRM_MODE_CONNECTOR_SVIDEO;
 case 129:
  return DRM_MODE_CONNECTOR_LVDS;
 default:
  return DRM_MODE_CONNECTOR_Unknown;
 }
}
