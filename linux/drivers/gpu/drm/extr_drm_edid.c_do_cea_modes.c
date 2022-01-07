
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct drm_hdmi_info {unsigned long long y420_cmdb_map; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_2__ {struct drm_hdmi_info hdmi; } ;
struct drm_connector {TYPE_1__ display_info; } ;


 int drm_add_cmdb_modes (struct drm_connector*,int const) ;
 struct drm_display_mode* drm_display_mode_from_vic_index (struct drm_connector*,int const*,int,int) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;

__attribute__((used)) static int
do_cea_modes(struct drm_connector *connector, const u8 *db, u8 len)
{
 int i, modes = 0;
 struct drm_hdmi_info *hdmi = &connector->display_info.hdmi;

 for (i = 0; i < len; i++) {
  struct drm_display_mode *mode;
  mode = drm_display_mode_from_vic_index(connector, db, len, i);
  if (mode) {
   if (i < 64 && hdmi->y420_cmdb_map & (1ULL << i))
    drm_add_cmdb_modes(connector, db[i]);

   drm_mode_probed_add(connector, mode);
   modes++;
  }
 }

 return modes;
}
