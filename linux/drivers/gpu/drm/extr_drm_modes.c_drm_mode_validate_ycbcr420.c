
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct drm_hdmi_info {int y420_vdb_modes; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_2__ {struct drm_hdmi_info hdmi; } ;
struct drm_connector {int ycbcr_420_allowed; TYPE_1__ display_info; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int MODE_NO_420 ;
 int MODE_OK ;
 int drm_match_cea_mode (struct drm_display_mode const*) ;
 scalar_t__ test_bit (int ,int ) ;

enum drm_mode_status
drm_mode_validate_ycbcr420(const struct drm_display_mode *mode,
      struct drm_connector *connector)
{
 u8 vic = drm_match_cea_mode(mode);
 enum drm_mode_status status = MODE_OK;
 struct drm_hdmi_info *hdmi = &connector->display_info.hdmi;

 if (test_bit(vic, hdmi->y420_vdb_modes)) {
  if (!connector->ycbcr_420_allowed)
   status = MODE_NO_420;
 }

 return status;
}
