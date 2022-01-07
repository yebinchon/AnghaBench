
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {scalar_t__ clock; } ;


 scalar_t__ KHZ2PICOS (scalar_t__) ;

__attribute__((used)) static bool drm_mode_match_clock(const struct drm_display_mode *mode1,
      const struct drm_display_mode *mode2)
{




 if (mode1->clock && mode2->clock)
  return KHZ2PICOS(mode1->clock) == KHZ2PICOS(mode2->clock);
 else
  return mode1->clock == mode2->clock;
}
