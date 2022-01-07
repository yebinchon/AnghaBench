
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct edid {int width_cm; int height_cm; int revision; int input; int features; } ;
struct drm_display_info {int width_mm; int height_mm; int non_desktop; int bpc; int color_formats; } ;
struct drm_connector {int name; struct drm_display_info display_info; } ;


 int DRM_COLOR_FORMAT_RGB444 ;
 int DRM_COLOR_FORMAT_YCRCB422 ;
 int DRM_COLOR_FORMAT_YCRCB444 ;
 int DRM_DEBUG (char*,int ,int) ;
 int DRM_DEBUG_KMS (char*,int) ;






 int DRM_EDID_DIGITAL_DEPTH_MASK ;

 int DRM_EDID_DIGITAL_DFP_1_X ;
 int DRM_EDID_FEATURE_RGB_YCRCB422 ;
 int DRM_EDID_FEATURE_RGB_YCRCB444 ;
 int DRM_EDID_INPUT_DIGITAL ;
 int EDID_QUIRK_NON_DESKTOP ;
 int drm_parse_cea_ext (struct drm_connector*,struct edid const*) ;
 int drm_reset_display_info (struct drm_connector*) ;
 int edid_get_quirks (struct edid const*) ;

u32 drm_add_display_info(struct drm_connector *connector, const struct edid *edid)
{
 struct drm_display_info *info = &connector->display_info;

 u32 quirks = edid_get_quirks(edid);

 drm_reset_display_info(connector);

 info->width_mm = edid->width_cm * 10;
 info->height_mm = edid->height_cm * 10;

 info->non_desktop = !!(quirks & EDID_QUIRK_NON_DESKTOP);

 DRM_DEBUG_KMS("non_desktop set to %d\n", info->non_desktop);

 if (edid->revision < 3)
  return quirks;

 if (!(edid->input & DRM_EDID_INPUT_DIGITAL))
  return quirks;

 drm_parse_cea_ext(connector, edid);
 if (info->bpc == 0 && edid->revision == 3 &&
     edid->input & DRM_EDID_DIGITAL_DFP_1_X) {
  info->bpc = 8;
  DRM_DEBUG("%s: Assigning DFP sink color depth as %d bpc.\n",
     connector->name, info->bpc);
 }


 if (edid->revision < 4)
  return quirks;

 switch (edid->input & DRM_EDID_DIGITAL_DEPTH_MASK) {
 case 130:
  info->bpc = 6;
  break;
 case 129:
  info->bpc = 8;
  break;
 case 134:
  info->bpc = 10;
  break;
 case 133:
  info->bpc = 12;
  break;
 case 132:
  info->bpc = 14;
  break;
 case 131:
  info->bpc = 16;
  break;
 case 128:
 default:
  info->bpc = 0;
  break;
 }

 DRM_DEBUG("%s: Assigning EDID-1.4 digital sink color depth as %d bpc.\n",
     connector->name, info->bpc);

 info->color_formats |= DRM_COLOR_FORMAT_RGB444;
 if (edid->features & DRM_EDID_FEATURE_RGB_YCRCB444)
  info->color_formats |= DRM_COLOR_FORMAT_YCRCB444;
 if (edid->features & DRM_EDID_FEATURE_RGB_YCRCB422)
  info->color_formats |= DRM_COLOR_FORMAT_YCRCB422;
 return quirks;
}
