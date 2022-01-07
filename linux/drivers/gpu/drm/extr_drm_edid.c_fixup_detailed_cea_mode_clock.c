
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct drm_display_mode {int clock; } ;


 int DRM_DEBUG (char*,char const*,size_t,int,int) ;
 scalar_t__ abs (int) ;
 int cea_mode_alternate_clock (struct drm_display_mode const*) ;
 size_t drm_match_cea_mode_clock_tolerance (struct drm_display_mode*,int) ;
 size_t drm_match_hdmi_mode_clock_tolerance (struct drm_display_mode*,int) ;
 scalar_t__ drm_valid_cea_vic (size_t) ;
 scalar_t__ drm_valid_hdmi_vic (size_t) ;
 struct drm_display_mode* edid_4k_modes ;
 struct drm_display_mode* edid_cea_modes ;
 int hdmi_mode_alternate_clock (struct drm_display_mode const*) ;

__attribute__((used)) static void fixup_detailed_cea_mode_clock(struct drm_display_mode *mode)
{
 const struct drm_display_mode *cea_mode;
 int clock1, clock2, clock;
 u8 vic;
 const char *type;





 vic = drm_match_cea_mode_clock_tolerance(mode, 5);
 if (drm_valid_cea_vic(vic)) {
  type = "CEA";
  cea_mode = &edid_cea_modes[vic];
  clock1 = cea_mode->clock;
  clock2 = cea_mode_alternate_clock(cea_mode);
 } else {
  vic = drm_match_hdmi_mode_clock_tolerance(mode, 5);
  if (drm_valid_hdmi_vic(vic)) {
   type = "HDMI";
   cea_mode = &edid_4k_modes[vic];
   clock1 = cea_mode->clock;
   clock2 = hdmi_mode_alternate_clock(cea_mode);
  } else {
   return;
  }
 }


 if (abs(mode->clock - clock1) < abs(mode->clock - clock2))
  clock = clock1;
 else
  clock = clock2;

 if (mode->clock == clock)
  return;

 DRM_DEBUG("detailed mode matches %s VIC %d, adjusting clock %d -> %d\n",
    type, vic, mode->clock, clock);
 mode->clock = clock;
}
