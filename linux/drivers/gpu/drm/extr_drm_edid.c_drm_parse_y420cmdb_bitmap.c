
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct drm_hdmi_info {int y420_cmdb_map; } ;
struct drm_display_info {int color_formats; struct drm_hdmi_info hdmi; } ;
struct drm_connector {struct drm_display_info display_info; } ;


 int DRM_COLOR_FORMAT_YCRCB420 ;
 int U64_MAX ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int cea_db_payload_len (int const*) ;

__attribute__((used)) static void drm_parse_y420cmdb_bitmap(struct drm_connector *connector,
          const u8 *db)
{
 struct drm_display_info *info = &connector->display_info;
 struct drm_hdmi_info *hdmi = &info->hdmi;
 u8 map_len = cea_db_payload_len(db) - 1;
 u8 count;
 u64 map = 0;

 if (map_len == 0) {

  hdmi->y420_cmdb_map = U64_MAX;
  info->color_formats |= DRM_COLOR_FORMAT_YCRCB420;
  return;
 }
 if (WARN_ON_ONCE(map_len > 8))
  map_len = 8;

 for (count = 0; count < map_len; count++)
  map |= (u64)db[2 + count] << (8 * count);

 if (map)
  info->color_formats |= DRM_COLOR_FORMAT_YCRCB420;

 hdmi->y420_cmdb_map = map;
}
