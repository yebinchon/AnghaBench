
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_display_info {int rgb_quant_range_selectable; } ;
struct drm_connector {struct drm_display_info display_info; } ;


 int DRM_DEBUG_KMS (char*,int const) ;
 int const EDID_CEA_VCDB_QS ;

__attribute__((used)) static void drm_parse_vcdb(struct drm_connector *connector, const u8 *db)
{
 struct drm_display_info *info = &connector->display_info;

 DRM_DEBUG_KMS("CEA VCDB 0x%02x\n", db[2]);

 if (db[2] & EDID_CEA_VCDB_QS)
  info->rgb_quant_range_selectable = 1;
}
