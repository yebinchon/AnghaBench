
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int dummy; } ;


 unsigned int DRM_MODE_MATCH_3D_FLAGS ;
 unsigned int DRM_MODE_MATCH_ASPECT_RATIO ;
 unsigned int DRM_MODE_MATCH_CLOCK ;
 unsigned int DRM_MODE_MATCH_FLAGS ;
 unsigned int DRM_MODE_MATCH_TIMINGS ;
 int drm_mode_match_3d_flags (struct drm_display_mode const*,struct drm_display_mode const*) ;
 int drm_mode_match_aspect_ratio (struct drm_display_mode const*,struct drm_display_mode const*) ;
 int drm_mode_match_clock (struct drm_display_mode const*,struct drm_display_mode const*) ;
 int drm_mode_match_flags (struct drm_display_mode const*,struct drm_display_mode const*) ;
 int drm_mode_match_timings (struct drm_display_mode const*,struct drm_display_mode const*) ;

bool drm_mode_match(const struct drm_display_mode *mode1,
      const struct drm_display_mode *mode2,
      unsigned int match_flags)
{
 if (!mode1 && !mode2)
  return 1;

 if (!mode1 || !mode2)
  return 0;

 if (match_flags & DRM_MODE_MATCH_TIMINGS &&
     !drm_mode_match_timings(mode1, mode2))
  return 0;

 if (match_flags & DRM_MODE_MATCH_CLOCK &&
     !drm_mode_match_clock(mode1, mode2))
  return 0;

 if (match_flags & DRM_MODE_MATCH_FLAGS &&
     !drm_mode_match_flags(mode1, mode2))
  return 0;

 if (match_flags & DRM_MODE_MATCH_3D_FLAGS &&
     !drm_mode_match_3d_flags(mode1, mode2))
  return 0;

 if (match_flags & DRM_MODE_MATCH_ASPECT_RATIO &&
     !drm_mode_match_aspect_ratio(mode1, mode2))
  return 0;

 return 1;
}
