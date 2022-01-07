
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct drm_hdmi_info {int y420_cmdb_modes; } ;
struct TYPE_2__ {struct drm_hdmi_info hdmi; } ;
struct drm_connector {TYPE_1__ display_info; } ;


 int bitmap_set (int ,int ,int) ;
 int drm_valid_cea_vic (int ) ;
 int svd_to_vic (int ) ;

__attribute__((used)) static void
drm_add_cmdb_modes(struct drm_connector *connector, u8 svd)
{
 u8 vic = svd_to_vic(svd);
 struct drm_hdmi_info *hdmi = &connector->display_info.hdmi;

 if (!drm_valid_cea_vic(vic))
  return;

 bitmap_set(hdmi->y420_cmdb_modes, vic, 1);
}
