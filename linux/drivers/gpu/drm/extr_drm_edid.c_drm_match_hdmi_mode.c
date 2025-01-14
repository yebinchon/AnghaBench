
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct drm_display_mode {unsigned int clock; } ;


 size_t ARRAY_SIZE (struct drm_display_mode*) ;
 unsigned int DRM_MODE_MATCH_FLAGS ;
 unsigned int DRM_MODE_MATCH_TIMINGS ;
 scalar_t__ KHZ2PICOS (unsigned int) ;
 scalar_t__ drm_mode_match (struct drm_display_mode const*,struct drm_display_mode const*,unsigned int) ;
 struct drm_display_mode* edid_4k_modes ;
 unsigned int hdmi_mode_alternate_clock (struct drm_display_mode const*) ;

__attribute__((used)) static u8 drm_match_hdmi_mode(const struct drm_display_mode *to_match)
{
 unsigned int match_flags = DRM_MODE_MATCH_TIMINGS | DRM_MODE_MATCH_FLAGS;
 u8 vic;

 if (!to_match->clock)
  return 0;

 for (vic = 1; vic < ARRAY_SIZE(edid_4k_modes); vic++) {
  const struct drm_display_mode *hdmi_mode = &edid_4k_modes[vic];
  unsigned int clock1, clock2;


  clock1 = hdmi_mode->clock;
  clock2 = hdmi_mode_alternate_clock(hdmi_mode);

  if ((KHZ2PICOS(to_match->clock) == KHZ2PICOS(clock1) ||
       KHZ2PICOS(to_match->clock) == KHZ2PICOS(clock2)) &&
      drm_mode_match(to_match, hdmi_mode, match_flags))
   return vic;
 }
 return 0;
}
