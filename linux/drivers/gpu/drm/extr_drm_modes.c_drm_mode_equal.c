
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int dummy; } ;


 int DRM_MODE_MATCH_3D_FLAGS ;
 int DRM_MODE_MATCH_ASPECT_RATIO ;
 int DRM_MODE_MATCH_CLOCK ;
 int DRM_MODE_MATCH_FLAGS ;
 int DRM_MODE_MATCH_TIMINGS ;
 int drm_mode_match (struct drm_display_mode const*,struct drm_display_mode const*,int) ;

bool drm_mode_equal(const struct drm_display_mode *mode1,
      const struct drm_display_mode *mode2)
{
 return drm_mode_match(mode1, mode2,
         DRM_MODE_MATCH_TIMINGS |
         DRM_MODE_MATCH_CLOCK |
         DRM_MODE_MATCH_FLAGS |
         DRM_MODE_MATCH_3D_FLAGS|
         DRM_MODE_MATCH_ASPECT_RATIO);
}
