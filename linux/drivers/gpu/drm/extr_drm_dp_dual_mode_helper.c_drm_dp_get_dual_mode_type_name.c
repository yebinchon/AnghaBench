
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum drm_dp_dual_mode_type { ____Placeholder_drm_dp_dual_mode_type } drm_dp_dual_mode_type ;
 int DRM_DP_DUAL_MODE_UNKNOWN ;
 int WARN_ON (int) ;

const char *drm_dp_get_dual_mode_type_name(enum drm_dp_dual_mode_type type)
{
 switch (type) {
 case 132:
  return "none";
 case 131:
  return "type 1 DVI";
 case 130:
  return "type 1 HDMI";
 case 129:
  return "type 2 DVI";
 case 128:
  return "type 2 HDMI";
 case 133:
  return "lspcon";
 default:
  WARN_ON(type != DRM_DP_DUAL_MODE_UNKNOWN);
  return "unknown";
 }
}
