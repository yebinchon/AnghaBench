
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct drm_display_mode {int dummy; } ;
struct TYPE_2__ {int y420_vdb_modes; } ;
struct drm_display_info {TYPE_1__ hdmi; } ;


 int drm_match_cea_mode (struct drm_display_mode const*) ;
 int test_bit (int ,int ) ;

bool drm_mode_is_420_only(const struct drm_display_info *display,
     const struct drm_display_mode *mode)
{
 u8 vic = drm_match_cea_mode(mode);

 return test_bit(vic, display->hdmi.y420_vdb_modes);
}
