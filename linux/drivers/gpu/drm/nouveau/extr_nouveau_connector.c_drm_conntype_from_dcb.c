
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dcb_connector_type { ____Placeholder_dcb_connector_type } dcb_connector_type ;
 int DRM_MODE_CONNECTOR_DVID ;
 int DRM_MODE_CONNECTOR_DVII ;
 int DRM_MODE_CONNECTOR_DisplayPort ;
 int DRM_MODE_CONNECTOR_HDMIA ;
 int DRM_MODE_CONNECTOR_LVDS ;
 int DRM_MODE_CONNECTOR_TV ;
 int DRM_MODE_CONNECTOR_Unknown ;
 int DRM_MODE_CONNECTOR_VGA ;
 int DRM_MODE_CONNECTOR_VIRTUAL ;
 int DRM_MODE_CONNECTOR_eDP ;

__attribute__((used)) static int
drm_conntype_from_dcb(enum dcb_connector_type dcb)
{
 switch (dcb) {
 case 130 : return DRM_MODE_CONNECTOR_VGA;
 case 134 :
 case 133 :
 case 132 : return DRM_MODE_CONNECTOR_TV;
 case 146 :
 case 145 :
 case 140 : return DRM_MODE_CONNECTOR_DVII;
 case 141 : return DRM_MODE_CONNECTOR_DVID;
 case 136 :
 case 135: return DRM_MODE_CONNECTOR_LVDS;
 case 144:
 case 143:
 case 142 :
 case 131 : return DRM_MODE_CONNECTOR_DisplayPort;
 case 128 : return DRM_MODE_CONNECTOR_eDP;
 case 139 :
 case 138 :
 case 137 : return DRM_MODE_CONNECTOR_HDMIA;
 case 129 : return DRM_MODE_CONNECTOR_VIRTUAL;
 default:
  break;
 }

 return DRM_MODE_CONNECTOR_Unknown;
}
