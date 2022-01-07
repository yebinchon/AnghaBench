
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct drm_hdmi_info {int y420_dc_modes; } ;
struct TYPE_2__ {struct drm_hdmi_info hdmi; } ;
struct drm_connector {TYPE_1__ display_info; } ;


 int const DRM_EDID_YCBCR420_DC_MASK ;

__attribute__((used)) static void drm_parse_ycbcr420_deep_color_info(struct drm_connector *connector,
            const u8 *db)
{
 u8 dc_mask;
 struct drm_hdmi_info *hdmi = &connector->display_info.hdmi;

 dc_mask = db[7] & DRM_EDID_YCBCR420_DC_MASK;
 hdmi->y420_dc_modes = dc_mask;
}
