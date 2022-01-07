
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum signal_type { ____Placeholder_signal_type } signal_type ;


 int DRM_MODE_CONNECTOR_DVID ;
 int DRM_MODE_CONNECTOR_DisplayPort ;
 int DRM_MODE_CONNECTOR_HDMIA ;
 int DRM_MODE_CONNECTOR_LVDS ;
 int DRM_MODE_CONNECTOR_Unknown ;
 int DRM_MODE_CONNECTOR_VGA ;
 int DRM_MODE_CONNECTOR_VIRTUAL ;
 int DRM_MODE_CONNECTOR_eDP ;
__attribute__((used)) static int to_drm_connector_type(enum signal_type st)
{
 switch (st) {
 case 131:
  return DRM_MODE_CONNECTOR_HDMIA;
 case 132:
  return DRM_MODE_CONNECTOR_eDP;
 case 130:
  return DRM_MODE_CONNECTOR_LVDS;
 case 129:
  return DRM_MODE_CONNECTOR_VGA;
 case 136:
 case 135:
  return DRM_MODE_CONNECTOR_DisplayPort;
 case 134:
 case 133:
  return DRM_MODE_CONNECTOR_DVID;
 case 128:
  return DRM_MODE_CONNECTOR_VIRTUAL;

 default:
  return DRM_MODE_CONNECTOR_Unknown;
 }
}
