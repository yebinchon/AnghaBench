
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {scalar_t__ picture_aspect_ratio; } ;



__attribute__((used)) static bool drm_mode_match_aspect_ratio(const struct drm_display_mode *mode1,
     const struct drm_display_mode *mode2)
{
 return mode1->picture_aspect_ratio == mode2->picture_aspect_ratio;
}
